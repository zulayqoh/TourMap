//
//  UIView+Extension.swift
//  TourMap
//
//  Created by Decagon on 19/01/2022.
//

import UIKit
enum LinePosition {
    case top
    case bottom
}

extension UIView {
  
 @IBInspectable var cornerRadius : CGFloat {
   get{ return self.cornerRadius}
    set{self.layer.cornerRadius = newValue}
  }
  
  func dropShadow(scale: Bool = true) {
      layer.masksToBounds = false
      layer.shadowColor = UIColor.black.cgColor
      layer.shadowOpacity = 0.2
      layer.shadowOffset = .zero
      layer.shadowRadius = 10
      layer.shouldRasterize = true
      layer.rasterizationScale = scale ? UIScreen.main.scale : 1
  }

      func addLine(position: LinePosition, color: UIColor, width: Double) {
          let lineView = UIView()
          lineView.backgroundColor = color
          lineView.translatesAutoresizingMaskIntoConstraints = false // This is important!
          self.addSubview(lineView)

          let metrics = ["width" : NSNumber(value: width)]
          let views = ["lineView" : lineView]
          self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lineView]|", options:NSLayoutConstraint.FormatOptions(rawValue: 0), metrics:metrics, views:views))

          switch position {
          case .top:
              self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lineView(width)]", options:NSLayoutConstraint.FormatOptions(rawValue: 0), metrics:metrics, views:views))
              break
          case .bottom:
              self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[lineView(width)]|", options:NSLayoutConstraint.FormatOptions(rawValue: 0), metrics:metrics, views:views))
              break
          }
      }
  
}
