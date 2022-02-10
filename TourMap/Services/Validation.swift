//
//  Validation.swift
//  TourMap
//
//  Created by Decagon on 05/02/2022.
//

import Foundation
import UIKit

class Validation {
  //MARK:- Email Address Validation
  func isValidEmail(email: String) -> Bool {
    let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", regex)
    let result = emailPredicate.evaluate(with: email)
    return result
  }
  //MARK:- UserName Validation
  func isValidName(name: String) -> Bool {
    let regex = "^[a-zA-Z]{4,}(?: [a-zA-Z]+)?(?: [a-zA-Z]+)?$"
    let testPredicate = NSPredicate(format: "SELF MATCHES %@", regex)
    let result = testPredicate.evaluate(with: name)
    return result
  }
  
  //    length 6 to 16.
  //    One Alphabet in Password.
  //    One Special Character in Password.
  func isValidPassword(password: String) -> Bool {
    let passwordRegEx = "^(?=.*?[A-Z])(?=.*[a-z])(?=.*?[0-9])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,16}"
    let passwordPredicate = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
    let result = passwordPredicate.evaluate(with: password)
    return result
  }

  //MARK:- PhoneNumber Validation "^[0-9]{11}$"
  func isValidPhoneNumber(_ PhoneNumber : String) -> Bool{
    let phoneRegex = "^\\d{3}-\\d{3}-\\d{4}$"
    let phonePredicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
    let result =  phonePredicate.evaluate(with: PhoneNumber)
    return result
  }  
}
