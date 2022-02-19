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
