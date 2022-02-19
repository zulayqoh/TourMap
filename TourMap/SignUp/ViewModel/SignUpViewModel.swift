//
//  SignUpViewModel.swift
//  TourMap
//
//  Created by Decagon on 06/02/2022.
//

import Foundation
class SignUpViewModel {
  let firebaseAuthManager = FirebaseAuthManager()
  
  func createUserAccount(with userData: SignUpData, completion: @escaping (_ success: Bool) -> Void) {
    firebaseAuthManager.createUser(email: userData.emailAddress, password: userData.password) { result in
      completion(result)
    }
  }

}
