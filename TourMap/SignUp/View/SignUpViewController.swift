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
  
  @objc func signUpButtonClicked() {
    let signUpManager = FirebaseAuthManager()
    var alertController = UIAlertController()
    var message = String()
    
    if let name = signUpPage.nameTextField.text, let email = signUpPage.emailTextField.text, let password = signUpPage.passwordTextField.text, let confirmPassword = signUpPage.confirmPasswordTextField.text {
      
      let signUpCredentials = signUpViewModel.validateUserSignUpDetails(name: name, email: email, password: password, confirmPassword: confirmPassword)
      if signUpCredentials.isValidUserDetail {
        signUpManager.createUser(email: email, password: password) { [weak self] success in
          guard let `self` = self else { return }
          if success {
            message = Constant.ValidateText.signUpSuccess
          } else {
            message = Constant.ValidateText.signUpError
          }
          alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
          alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
          self.present(alertController, animated: false, completion: nil)
        }
      } else {
        message = signUpCredentials.message
        alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alertController, animated: false, completion: nil)
      }
    }
  }
}
