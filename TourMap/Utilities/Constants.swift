//
//  Constants.swift
//  TourMap
//
//  Created by Decagon on 21/01/2022.
//

import Foundation
import UIKit
struct Constant {
  struct Content {
    static let onboardingTitle1 = "Let's Travel"
    static let onboardingTitle2 = "Plan A Trip"
    static let onboardingTitle3 = "Book A Flight"
    
    static let onboardingDescription1 = "\"Few places in this world are more dangerous than home. Fear not, therefore, to try the mountain passes. They will kill care, save you from deadly apathy, set you free, and call forth every faculty into vigorous, enthusiastic action.\" ~John Muir"
    static let onboardingDescription2 = "\"It seems that the more places I see and experience, the bigger I realize the world to be. The more I become aware of, the more I realize how relatively little I know of it, how many places I have still to go, how much more there is to learn.\" ~Anthony Bourdain"
    static let onboardingDescription3 = "\"A journey of a thousand miles begins with a single step.\" ~Lao Tzu There’s a sunrise and sunset every single day, and they’re absolutely free. Don’t miss so many of them.“Man cannot discover new oceans unless he has the courage to lose sight of the shore.” ~Andre Gide"
    static let buttonHeight = CGFloat(50)
  }
  
  struct StringContent {
    static let createAccount = "Create Account"
    static let login = "Login"
    static let signUp = "Sign Up"
  }
  
  struct Image {
    static let onboardingImage1 = UIImage(named: "travels1")
    static let onboardingImage2 = UIImage(named: "travels2")
    static let onboardingImage3 = UIImage(named: "travels3")
    static let setupBackground = UIImage(named: "setup")
  }
  
  struct Color {
    static let buttonBackground = UIColor(red:0.95, green:0.50, blue:0.00, alpha:1.0)
    static let textFieldIconColor = UIColor(red:0.27, green:0.24, blue:0.79, alpha:1.0)
  }
  
  struct Font {
    static let poppinsRegular20 = UIFont(name: "Poppins-Regular", size: 20)
    static let poppinsSemibold33 = UIFont(name: "Poppins-SemiBold", size: 33)
    static let poppinsRegular16 = UIFont(name: "Poppins-Regular", size: 16)
    static let poppinsRegular12 = UIFont(name: "Poppins-Regular", size: 12)
  }
}
