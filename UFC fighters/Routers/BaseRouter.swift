//
//  BaseRouter.swift
//  UFC fighters
//
//  Created by Aibek on 01.06.2022.
//

import UIKit

class BaseRouting {
    func routeBack(_ vc: UIViewController) {
        vc.dismiss(animated: true, completion: nil)
    }
    
    func dismissToHome(_ vc: UIViewController) {
        vc.navigationController?.popViewController(animated: true)
    }
}
