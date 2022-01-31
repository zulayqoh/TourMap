//
//  SignUpViewController.swift
//  TourMap
//
//  Created by Decagon on 27/01/2022.
//

import UIKit

class SignUpViewController: UIViewController {
  let signUpPage = SignUpView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    configureSignInPage()
  }
  func configureSignInPage() {

    signUpPage.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(signUpPage)

    NSLayoutConstraint.activate([
      signUpPage.topAnchor.constraint(equalTo: view.topAnchor),
      signUpPage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      signUpPage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      signUpPage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
  
}
