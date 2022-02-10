//
//  FirebaseAuthManager.swift
//  TourMap
//
//  Created by Decagon on 09/02/2022.
//

import Foundation
import FirebaseAuth
import UIKit
class FirebaseAuthManager {
    func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
      FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let user = authResult?.user {
                print(user)
                completionBlock(true)
            } else {
                completionBlock(false)
              
            }
        }
    }
}

//Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
//  if let error = error as? NSError {
//    switch AuthErrorCode(rawValue: error.code) {
//    case .operationNotAllowed:
//      // Error: The given sign-in provider is disabled for this Firebase project. Enable it in the Firebase console, under the sign-in method tab of the Auth section.
//    case .emailAlreadyInUse:
//      // Error: The email address is already in use by another account.
//    case .invalidEmail:
//      // Error: The email address is badly formatted.
//    case .weakPassword:
//      // Error: The password must be 6 characters long or more.
//    default:
//        print("Error: \(error.localizedDescription)")
//    }
//  } else {
//    print("User signs up successfully")
//    let newUserInfo = Auth.auth().currentUser
//    let email = newUserInfo?.email
//  }
