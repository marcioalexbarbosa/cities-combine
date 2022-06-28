//
//  AlertService.swift
//  cities-combine
//
//  Created by Marcio Alexandre Barbosa on 28/06/22.
//

import UIKit

enum AlertService {
    
    static func showAlert(with message: String, in viewController: UIViewController?) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(
            .init(title: "OK", style: .cancel)
        )
        viewController?.present(alert, animated: true)
    }
}
