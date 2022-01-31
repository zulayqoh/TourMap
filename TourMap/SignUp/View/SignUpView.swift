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
  let inputTextField = CustomTextField()
  let modelName = ["Name", "Email", "Password", "Confirm password"]
  let iconName = ["person.fill", "phone.fill", "key.fill", "key.fill"]
  
  let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "signup")
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
  
  func addInputTextField() {
    var topConstraint: CGFloat = 20
    for index in 0..<modelName.count {
      let inputTextField = CustomTextField()
      inputTextField.placeholder = modelName[index]
      inputTextField.setRightImage(imageName: iconName[index])
      
      inputTextField.translatesAutoresizingMaskIntoConstraints = false
      backgroundView.addSubview(inputTextField)
      inputTextField.rightView?.tintColor = Constant.Color.textFieldIconColor
      
      if index > 0 {
        topConstraint = topConstraint + 70
      }
      
      NSLayoutConstraint.activate([
        inputTextField.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: topConstraint),
        inputTextField.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
        inputTextField.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.9),
        inputTextField.heightAnchor.constraint(equalToConstant: 50)
      ])
    }
  }
  
  private func addSignUpViews() {
    addSignUpLabel()
    addImageView()
    addBackgroundView()
    addSignUpButton()
    addInputTextField()
  }
  
}
