//
//  SignInViewController.swift
//  TourMap
//
//  Created by Decagon on 27/01/2022.
//

import UIKit

class LogInViewController: UIViewController {
  let LogInPage = LogInView()
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    configureLogInPage()
  }
  func configureLogInPage() {

    LogInPage.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(LogInPage)

    NSLayoutConstraint.activate([
      LogInPage.topAnchor.constraint(equalTo: view.topAnchor),
      LogInPage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      LogInPage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      LogInPage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
  
}
