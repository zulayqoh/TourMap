//
//  SignUpViewController.swift
//  TourMap
//
//  Created by Decagon on 27/01/2022.
//

import UIKit

class SignUpViewController: UIViewController {
  let signUpPage = SignUpView()
  let signUpViewModel = SignUpViewModel()
  var validation = Validation()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    configureSignInPage()
  }
  
  func configureSignInPage() {
    signUpPage.signUpButton.addTarget(self, action: #selector(signUpButtonClicked), for: .touchUpInside)
    signUpPage.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(signUpPage)
    
    NSLayoutConstraint.activate([
      signUpPage.topAnchor.constraint(equalTo: view.topAnchor),
      signUpPage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      signUpPage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      signUpPage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
  
  func validateTextField() {
   
  }
  
  @objc func signUpButtonClicked() {
    guard let name = signUpPage.nameTextField.text, validation.isValidName(name: name) else {
      self.showAlertMessage(message: SignUpError.nameNotValid.localizedDescription)
      return
    }
    guard let email = signUpPage.emailTextField.text, validation.isValidEmail(email: email) else {
      self.showAlertMessage(message: SignUpError.emailNotValid.localizedDescription)
      return
    }
    guard let password = signUpPage.passwordTextField.text, validation.isValidPassword(password: password) else {
      self.showAlertMessage(message: SignUpError.passwordNotValid.localizedDescription)
      return
    }
    let confirmPassword = signUpPage.confirmPasswordTextField.text ?? ""
    if password != confirmPassword {
      self.showAlertMessage(message: SignUpError.passwordsNotEqual.localizedDescription)
      return
    }
    signUpViewModel.createUserAccount(with: SignUpData(userName: name, emailAddress: email, password: password, confirmPassword: confirmPassword)) { success in
      switch success {
      case true:
        self.showAlertMessage(message: Constant.Authentication.signUpSuccess)
      case false:
        self.showAlertMessage(message: Constant.Authentication.signUpError)
      }
    }
  }
}
