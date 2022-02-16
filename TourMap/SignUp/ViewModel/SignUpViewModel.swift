//
//  SignUpViewModel.swift
//  TourMap
//
//  Created by Decagon on 06/02/2022.
//

import Foundation
class SignUpViewModel {
  
  let validation = Validation()
  
  func validateUserSignUpDetails(with userData: SignUpData, completionHandler: @escaping(Bool, String) -> Void) {
    let isName = validation.isValidName(name: userData.userName)
    let isEmail = validation.isValidEmail(email: userData.emailAddress)
    let ispassword = validation.isValidPassword(password: userData.password)
    let isConfirmPassword = validation.isValidPassword(password: userData.confirmPassword)
    let isEqualPassword = userData.password == userData.confirmPassword
    let isValidUser = isName && isEmail && ispassword && isConfirmPassword && isEqualPassword
    var message = Constant.ValidateText.success
    
    if !ispassword {
      message = Constant.ValidateText.invalidPassword
    }
    if !isEqualPassword {
      message = Constant.ValidateText.passwordNotEqual
    }
    if !isEmail {
      message = Constant.ValidateText.invalidEmail
    }
    if !isName {
      message = Constant.ValidateText.invalidName
    }
    completionHandler(isValidUser, message)
  }
}
