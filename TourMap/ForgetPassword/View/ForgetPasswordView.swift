//
//  ForgetPasswordView.swift
//  TourMap
//
//  Created by Decagon on 03/02/2022.
//

import UIKit

class ForgetPasswordView: UIView {
  let forgetPasswordTitleLabel = TitleLabel()
  let backgroundView = CustomBackgroundView()
  let sendButton = CustomButton()
  let phoneNumberTextField = CustomTextField()
  
  let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = Constant.Image.forgetPassword
    return imageView
  }()
  
  // MARK: - INITIALIZERS
  override init(frame: CGRect) {
    super.init(frame: frame)
    addForgetPasswordView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func addForgetPasswordLabel() {
    forgetPasswordTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    forgetPasswordTitleLabel.text = Constant.StringContent.forgetPassword
    addSubview(forgetPasswordTitleLabel)
    
    NSLayoutConstraint.activate([
      forgetPasswordTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      forgetPasswordTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100)
    ])
  }
  
  func addBackgroundView() {
    backgroundView.translatesAutoresizingMaskIntoConstraints = false
    addSubview(backgroundView)
    
    NSLayoutConstraint.activate([
      backgroundView.topAnchor.constraint(equalTo: forgetPasswordTitleLabel.bottomAnchor, constant: 30),
      backgroundView.centerXAnchor.constraint(equalTo: centerXAnchor),
      backgroundView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9),
      backgroundView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2)
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
  
  func addSendButton() {
    sendButton.translatesAutoresizingMaskIntoConstraints = false
    sendButton.setTitle(Constant.StringContent.send, for: .normal)
    addSubview(sendButton)
    
    NSLayoutConstraint.activate([
      sendButton.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -25),
      sendButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      sendButton.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.5),
      sendButton.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  func addInputTextField() {
    phoneNumberTextField.placeholder = Constant.StringContent.phoneNumber
    phoneNumberTextField.setRightImage(imageName: Constant.Icon.phoneField)
    
    phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
    backgroundView.addSubview(phoneNumberTextField)
    phoneNumberTextField.rightView?.tintColor = Constant.Color.textFieldIconColor
    
    NSLayoutConstraint.activate([
      phoneNumberTextField.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 50),
      phoneNumberTextField.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
      phoneNumberTextField.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.9),
      phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50)
    ])
    
  }
  
  private func addForgetPasswordView() {
    addForgetPasswordLabel()
    addBackgroundView()
    addInputTextField()
    addImageView()
    addSendButton()
  }
}
