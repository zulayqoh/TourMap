//
//  SignUpView.swift
//  TourMap
//
//  Created by Decagon on 27/01/2022.
//

import UIKit

class SignUpView: UIView {
  let signUpTitleLabel = TitleLabel()
  let backgroundView = CustomBackgroundView()
  let signUpButton = CustomButton()
  let nameTextField = CustomTextField()
  let emailTextField = CustomTextField()
  let passwordTextField = CustomTextField()
  let confirmPasswordTextField = CustomTextField()
  
  let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = Constant.Image.signUp
    return imageView
  }()
  
  // MARK: - INITIALIZERS
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSignUpViews()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func addSignUpLabel() {
    signUpTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    addSubview(signUpTitleLabel)
    signUpTitleLabel.text = Constant.StringContent.createAccount
    
    NSLayoutConstraint.activate([
      signUpTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      signUpTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
    ])
  }
  
  func addBackgroundView() {
    backgroundView.translatesAutoresizingMaskIntoConstraints = false
    addSubview(backgroundView)
    
    NSLayoutConstraint.activate([
      backgroundView.topAnchor.constraint(equalTo: signUpTitleLabel.bottomAnchor, constant: 30),
      backgroundView.centerXAnchor.constraint(equalTo: centerXAnchor),
      backgroundView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9),
      backgroundView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4)
    ])
  }
  
  func addImageView() {
    imageView.translatesAutoresizingMaskIntoConstraints = false
    addSubview(imageView)
    
    NSLayoutConstraint.activate([
      imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
      imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
      imageView.leadingAnchor.constraint(equalTo: leadingAnchor)
    ])
  }
  
  func addSignUpButton() {
    signUpButton.translatesAutoresizingMaskIntoConstraints = false
    signUpButton.setTitle(Constant.StringContent.signUp, for: .normal)
    addSubview(signUpButton)
    
    NSLayoutConstraint.activate([
      signUpButton.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -25),
      signUpButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      signUpButton.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.5),
      signUpButton.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  func addNameTextField() {
    backgroundView.addSubview(nameTextField)
    nameTextField.placeholder = Constant.StringContent.name
    nameTextField.setRightImage(imageName: Constant.Icon.nameField)
    nameTextField.rightView?.tintColor = Constant.Color.textFieldIconColor
    
    NSLayoutConstraint.activate([
      nameTextField.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 20),
      nameTextField.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
      nameTextField.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.9),
      nameTextField.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  func addEmailTextField() {
    backgroundView.addSubview(emailTextField)
    emailTextField.placeholder = Constant.StringContent.email
    emailTextField.setRightImage(imageName: Constant.Icon.emailField)
    emailTextField.rightView?.tintColor = Constant.Color.textFieldIconColor
    
    NSLayoutConstraint.activate([
      emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
      emailTextField.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
      emailTextField.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.9),
      emailTextField.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  func addPasswordTextField() {
    backgroundView.addSubview(passwordTextField)
    passwordTextField.placeholder = Constant.StringContent.password
    passwordTextField.setRightImage(imageName: Constant.Icon.passwordField)
    passwordTextField.rightView?.tintColor = Constant.Color.textFieldIconColor
    
    NSLayoutConstraint.activate([
      passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
      passwordTextField.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
      passwordTextField.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.9),
      passwordTextField.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  func addConfirmPasswordTextField() {
    backgroundView.addSubview(confirmPasswordTextField)
    confirmPasswordTextField.placeholder = Constant.StringContent.confirmPassword
    confirmPasswordTextField.setRightImage(imageName: Constant.Icon.passwordField)
    confirmPasswordTextField.rightView?.tintColor = Constant.Color.textFieldIconColor
    
    NSLayoutConstraint.activate([
      confirmPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
      confirmPasswordTextField.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
      confirmPasswordTextField.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.9),
      confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  private func addSignUpViews() {
    addSignUpLabel()
    addImageView()
    addBackgroundView()
    addNameTextField()
    addEmailTextField()
    addPasswordTextField()
    addConfirmPasswordTextField()
    addSignUpButton()
  }  
}
