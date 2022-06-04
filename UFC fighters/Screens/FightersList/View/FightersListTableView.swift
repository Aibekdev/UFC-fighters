//
//  FightersListTableView.swift
//  UFC fighters
//
//  Created by Aibek on 01.06.2022.
//

import UIKit

protocol FightersListOutputAction: class {
    func selectDidPress(_ model: FighterModel)
}

class FightersListTableView: UIView {
    private var tableView: UITableView!
    private let fightersList: [FighterModel] = FighterModel.getData()
    
    weak var outputAction: FightersListOutputAction?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
        configureTableView(frame)
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureViews() {
        self.backgroundColor = .systemGray4
    }
    
    private func configureTableView(_ frame: CGRect) {
        tableView = UITableView(frame: frame)
        tableView.backgroundColor = .systemGray4
        tableView.rowHeight = 80
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(FighterCell.self, forCellReuseIdentifier: "FighterCell")
    }
    
    private func addSubviews() {
        self.addSubview(tableView)
    }
}

extension FightersListTableView: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fightersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FighterCell", for: indexPath) as! FighterCell
        cell.fill(with: fightersList[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = fightersList[indexPath.row]
        outputAction?.selectDidPress(model)
    }
}

