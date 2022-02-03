//
//  VerificationPageView.swift
//  TourMap
//
//  Created by Decagon on 03/02/2022.
//

import UIKit

class VerificationPageView: UIView {
  
  let verificationPageTitleLabel = TitleLabel()
  let backgroundView = CustomBackgroundView()
  let verifyButton = CustomButton()
  let verificationTextField = CustomTextField()
  
  let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = Constant.Image.verify
    return imageView
  }()
  
  let resendLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = Constant.Color.resendLabelColor
    label.text = "Resend(30s)"
    label.font = Constant.Font.poppinsRegular16
    return label
  }()
  
  // MARK: - INITIALIZERS
  override init(frame: CGRect) {
    super.init(frame: frame)
    addVerificationView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func addVerificationLabel() {
    verificationPageTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    verificationPageTitleLabel.text = Constant.StringContent.verificationCode
    addSubview(verificationPageTitleLabel)
    
    NSLayoutConstraint.activate([
      verificationPageTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      verificationPageTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100)
    ])
  }
  
  func addBackgroundView() {
    backgroundView.translatesAutoresizingMaskIntoConstraints = false
    addSubview(backgroundView)
    
    NSLayoutConstraint.activate([
      backgroundView.topAnchor.constraint(equalTo: verificationPageTitleLabel.bottomAnchor, constant: 30),
      backgroundView.centerXAnchor.constraint(equalTo: centerXAnchor),
      backgroundView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9),
      backgroundView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.22)
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
  
  func addVerificationTextField() {
    verificationTextField.placeholder = Constant.StringContent.enterYourVerificationCode
    verificationTextField.translatesAutoresizingMaskIntoConstraints = false
    backgroundView.addSubview(verificationTextField)
    verificationTextField.rightView?.tintColor = Constant.Color.textFieldIconColor
    
    NSLayoutConstraint.activate([
      verificationTextField.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 50),
      verificationTextField.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
      verificationTextField.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.9),
      verificationTextField.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  func addVerifyButton() {
    verifyButton.translatesAutoresizingMaskIntoConstraints = false
    verifyButton.setTitle(Constant.StringContent.verify, for: .normal)
    addSubview(verifyButton)
    
    NSLayoutConstraint.activate([
      verifyButton.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -25),
      verifyButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      verifyButton.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.5),
      verifyButton.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
  func addResendLabel() {
    backgroundView.addSubview(resendLabel)
    NSLayoutConstraint.activate([
      resendLabel.topAnchor.constraint(equalTo: verificationTextField.bottomAnchor, constant: 20),
      resendLabel.trailingAnchor.constraint(equalTo: verificationTextField.trailingAnchor, constant: -20)
    ])
  }
  
  private func addVerificationView() {
    addImageView()
    addVerificationLabel()
    addBackgroundView()
    addVerificationTextField()
    addVerifyButton()
    addResendLabel()
  }
  
}
