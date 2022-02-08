//
//  SignInView.swift
//  TourMap
//
//  Created by Decagon on 31/01/2022.
//

import UIKit

class LogInView: UIView {
  var forgotPasswordPressed = {}
  
  let logInTitleLabel = TitleLabel()
  let logInFieldView = CustomBackgroundView()
  let logInButton = CustomButton()
  let emailTextField = CustomTextField()
  let passwordTextField = CustomTextField()
  
  let logInBackgroundImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = Constant.Image.logIn
    return imageView
  }()
  
  private lazy var forgotPasswordButton: UIButton = {
    let button = UIButton()
    button.setTitle(Constant.StringContent.forgotPassword, for: .normal)
    button.setTitleColor(UIColor(red:0.74, green:0.74, blue:0.74, alpha:1.0), for: .normal)
    button.titleLabel?.font = Constant.Font.poppinsRegular12
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  // MARK: - INITIALIZERS
  override init(frame: CGRect) {
    super.init(frame: frame)
    addLoginView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func addLogInLabel() {
    logInTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    addSubview(logInTitleLabel)
    logInTitleLabel.text = Constant.StringContent.login
    
    NSLayoutConstraint.activate([
      logInTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      logInTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
    ])
  }
  
  func addFieldView() {
    logInFieldView.translatesAutoresizingMaskIntoConstraints = false
    addSubview(logInFieldView)
    
    NSLayoutConstraint.activate([
      logInFieldView.topAnchor.constraint(equalTo: logInTitleLabel.bottomAnchor, constant: 30),
      logInFieldView.centerXAnchor.constraint(equalTo: centerXAnchor),
      logInFieldView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9),
      logInFieldView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.27)
    ])
  }
  
  func addImageView() {
    logInBackgroundImageView.translatesAutoresizingMaskIntoConstraints = false
    addSubview(logInBackgroundImageView)
    
    NSLayoutConstraint.activate([
      logInBackgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
      logInBackgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
      logInBackgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor)
    ])
  }
  
  func addSignUpButton() {
    logInButton.translatesAutoresizingMaskIntoConstraints = false
    logInButton.setTitle(Constant.StringContent.login, for: .normal)
    addSubview(logInButton)
    
    NSLayoutConstraint.activate([
      logInButton.topAnchor.constraint(equalTo: logInFieldView.bottomAnchor, constant: -25),
      logInButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      logInButton.widthAnchor.constraint(equalTo: logInFieldView.widthAnchor, multiplier: 0.5),
      logInButton.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  func addEmailTextField() {
    logInFieldView.addSubview(emailTextField)
    emailTextField.placeholder = Constant.StringContent.email
    emailTextField.setRightImage(imageName: Constant.Icon.emailField)
    emailTextField.rightView?.tintColor = Constant.Color.textFieldIconColor
    
    NSLayoutConstraint.activate([
      emailTextField.topAnchor.constraint(equalTo: logInFieldView.topAnchor, constant: 20),
      emailTextField.centerXAnchor.constraint(equalTo: logInFieldView.centerXAnchor),
      emailTextField.widthAnchor.constraint(equalTo: logInFieldView.widthAnchor, multiplier: 0.9),
      emailTextField.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  func addPasswordTextField() {
    logInFieldView.addSubview(passwordTextField)
    passwordTextField.placeholder = Constant.StringContent.password
    passwordTextField.setRightImage(imageName: Constant.Icon.passwordField)
    passwordTextField.rightView?.tintColor = Constant.Color.textFieldIconColor
    
    NSLayoutConstraint.activate([
      passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
      passwordTextField.centerXAnchor.constraint(equalTo: logInFieldView.centerXAnchor),
      passwordTextField.widthAnchor.constraint(equalTo: logInFieldView.widthAnchor, multiplier: 0.9),
      passwordTextField.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  private func addForgotPasswordButton() {
    logInFieldView.addSubview(forgotPasswordButton)
    forgotPasswordButton.addTarget(self, action: #selector(forgotPasswordButtonClicked), for: .touchUpInside)
    NSLayoutConstraint.activate([
      forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5),
      forgotPasswordButton.trailingAnchor.constraint(equalTo: logInFieldView.trailingAnchor, constant: -20)
    ])
  }
  
  private func addLoginView() {
    addImageView()
    addLogInLabel()
    addFieldView()
    addEmailTextField()
    addPasswordTextField()
    addSignUpButton()
    addForgotPasswordButton()
  }
  
  @objc func forgotPasswordButtonClicked() {
    forgotPasswordPressed()
  }
}
