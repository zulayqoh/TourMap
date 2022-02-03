//
//  SignInViewController.swift
//  TourMap
//
//  Created by Decagon on 27/01/2022.
//

import UIKit

class LogInViewController: UIViewController {
  let logInPage = LogInView()
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    configureLogInPage()
  }
  func configureLogInPage() {
    logInPage.forgotPasswordPressed = { [weak self] in
      self?.navigationController?.pushViewController(ForgetPasswordViewController(), animated: true)
    }
    logInPage.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(logInPage)

    NSLayoutConstraint.activate([
      logInPage.topAnchor.constraint(equalTo: view.topAnchor),
      logInPage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      logInPage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      logInPage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
  
  
}
