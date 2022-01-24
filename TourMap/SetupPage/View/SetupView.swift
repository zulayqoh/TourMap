//
//  SetupView.swift
//  TourMap
//
//  Created by Decagon on 22/01/2022.
//
import Foundation
import UIKit

class SetupViews: UIView {
  
  let createAccountButton = CustomButton()
  let loginButton = CustomButton()
  let setupBackground: UIImageView = {
    let imageView = UIImageView()
    imageView.image = Constant.Image.setupBackground
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureSetupViews()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func addSetupBackgroundImage() {
    addSubview(setupBackground)
    NSLayoutConstraint.activate([
      setupBackground.topAnchor.constraint(equalTo: topAnchor),
      setupBackground.bottomAnchor.constraint(equalTo: bottomAnchor),
      setupBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
      setupBackground.trailingAnchor.constraint(equalTo: trailingAnchor)
    ])
  }
  
  func setupCreateButton() {
    createAccountButton.setTitle(Constant.K.createAccount, for: .normal)
    addSubview(createAccountButton)
    
    NSLayoutConstraint.activate([
      createAccountButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      createAccountButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
      createAccountButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8),
      createAccountButton.heightAnchor.constraint(equalToConstant: Constant.Content.buttonHeight)
    ])
  }
  
  func setupLoginButton() {
    loginButton.setTitle(Constant.K.login, for: .normal)
    addSubview(loginButton)
    
    NSLayoutConstraint.activate([
      loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      loginButton.bottomAnchor.constraint(equalTo: createAccountButton.topAnchor, constant: -20),
      loginButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8),
      loginButton.heightAnchor.constraint(equalToConstant: Constant.Content.buttonHeight)
    ])
  }
  
  func configureSetupViews() {
    addSetupBackgroundImage()
    setupCreateButton()
    setupLoginButton()
  }
}
