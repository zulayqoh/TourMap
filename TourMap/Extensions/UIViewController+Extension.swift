//
//  UIViewController+Extension.swift
//  TourMap
//
//  Created by Decagon on 18/02/2022.
//

import Foundation
import UIKit

extension UIViewController {
  func showAlertMessage(message: String) {
    var alertController = UIAlertController()
    alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
    self.present(alertController, animated: false, completion: nil)
  }
}
