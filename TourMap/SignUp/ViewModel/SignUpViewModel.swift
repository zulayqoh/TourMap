//
//  SignUpViewModel.swift
//  TourMap
//
//  Created by Decagon on 06/02/2022.
//

import Foundation
class SignUpViewModel {
  
  let validation = Validation()
  func validateUserSignUpDetails(name: String, email: String, password: String, confirmPassword: String) -> (isValidUserDetail:Bool, message: String) {
    let isName = validation.isValidName(name: name)
    let isEmail = validation.isValidEmail(email: email)
    let ispassword = validation.isValidPassword(password: password)
    let isConfirmPassword = validation.isValidPassword(password: confirmPassword)
    let isEqualPassword = password == confirmPassword
    let isValidUser = isName && isEmail && ispassword && isConfirmPassword && isEqualPassword
    var message = Constant.ValidateText.success
    
    if !isName {
      message = Constant.ValidateText.invalidName
      return (isValidUser, message)
    }
    if !isEmail {
      message = Constant.ValidateText.invalidEmail
      return (isValidUser, message)
    }
    if !ispassword {
      message = Constant.ValidateText.invalidPassword
      return (isValidUser, message)
    }
    if !isEqualPassword {
      message = Constant.ValidateText.passwordNotEqual
      return (isValidUser, message)
    }
    return (isValidUser, message)
  }
}
