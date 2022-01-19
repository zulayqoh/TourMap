//
//  UIView+Extension.swift
//  TourMap
//
//  Created by Decagon on 19/01/2022.
//

import UIKit

extension UIView {
  
 @IBInspectable var cornerRadius : CGFloat {
   get{ return self.cornerRadius}
    set{self.layer.cornerRadius = newValue}
  }
}

