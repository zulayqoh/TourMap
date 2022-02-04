//
//  ForgetPasswordViewController.swift
//  TourMap
//
//  Created by Decagon on 03/02/2022.
//

import UIKit

class ForgetPasswordViewController: UIViewController {
  
  let forgetPasswordPage = ForgetPasswordView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    configureForgetPasswordPage()
  }
  
  func configureForgetPasswordPage() {
    forgetPasswordPage.sendButton.addTarget(self, action: #selector(sendButtonClicked), for: .touchUpInside)
    forgetPasswordPage.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(forgetPasswordPage)
    
    NSLayoutConstraint.activate([
      forgetPasswordPage.topAnchor.constraint(equalTo: view.topAnchor),
      forgetPasswordPage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      forgetPasswordPage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      forgetPasswordPage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
  
  @objc func sendButtonClicked() {
    navigationController?.pushViewController(VerificationPageViewController(), animated: true)
  }
}
