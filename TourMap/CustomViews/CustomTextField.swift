//
//  CustomIUserInputTextField.swift
//  TourMap
//
//  Created by Decagon on 28/01/2022.
//

import UIKit

class CustomTextField: UITextField {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureTextField()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func configureTextField() {
    translatesAutoresizingMaskIntoConstraints = false
    backgroundColor = .white
    borderStyle = UITextField.BorderStyle.none
    rightView?.tintColor = Constant.Color.textFieldIconColor
    addLine(position: .bottom, color: .darkGray, width: 0.5)
    attributedPlaceholder = NSAttributedString(string:"Enter Title", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
    font = Constant.Font.poppinsRegular16
    
  }
}
