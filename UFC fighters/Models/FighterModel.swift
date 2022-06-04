//
//  FighterModel.swift
//  UFC fighters
//
//  Created by Aibek on 01.06.2022.
//

import Foundation

struct FighterModel {
    var name: String
    var wins: Int
    var defeats: Int
    var draws: Int
    var videoId: String
    var photo: String
    
    init(name: String, wins: Int, defeats: Int, draws: Int, urlString: String, photo: String) {
        self.name = name
        self.wins = wins
        self.defeats = defeats
        self.draws = draws
        self.videoId = urlString
        self.photo = photo
    }
}

extension FighterModel {
    static func getData() -> [FighterModel] {
        return [FighterModel(name: "Shavkat Rakhmonov", wins: 15, defeats: 0, draws: 0, urlString: "Zj0lBsRKyJQ", photo: "photo_shavkat_rakhmonov"),
                FighterModel(name: "Islam Makhachev", wins: 21, defeats: 1, draws: 0, urlString: "iMzXPmWtMAw", photo: "photo_islam_makhachev"),
                FighterModel(name: "Zubaira Tukhugov", wins: 20, defeats: 5, draws: 1, urlString: "kkKikxY7o7g", photo: "photo_zubaira_tukhugov"),
                FighterModel(name: "Damir Ismagulov", wins: 20, defeats: 1, draws: 0, urlString: "JW5lF6Jbaa8", photo: "photo_damir_ismagulov"),
                FighterModel(name: "Movsar Evloev", wins: 15, defeats: 0, draws: 0, urlString: "WC-EgPIjNZU", photo: "photo_movsar_evloev"),
                FighterModel(name: "Magomed Ankalaev", wins: 18, defeats: 1, draws: 0, urlString: "wyj4xADpUtQ", photo: "photo_magomed_ankalaev"),
                FighterModel(name: "Abubakar Nurmagomedov", wins: 16, defeats: 3, draws: 1, urlString: "oAWRDccDaho", photo: "photo_abubakar_nurmagomedov"),
                FighterModel(name: "Zabit Magomedsharipov", wins: 18, defeats: 1, draws: 0, urlString: "kKxsa_MoYmo", photo: "photo_zabit_magomedsharipov"),
                FighterModel(name: "Magomed Mustafaev", wins: 14, defeats: 3, draws: 0, urlString: "MXNDN3zk7XI", photo: "photo_magomed_mustafaev"),
                FighterModel(name: "Shamil Abdurakhimov", wins: 20, defeats: 7, draws: 0, urlString: "wzcOyKtgpa8", photo: "photo_shamil_abdurakhimov")]
    }
}
