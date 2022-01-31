//
//  CustomButton.swift
//  TourMap
//
//  Created by Decagon on 22/01/2022.
//

import Foundation
import UIKit

class CustomButton: UIButton {
  var createButtonPressed: (() -> ())?
  
  // MARK: - INITIALIZERS
  override init(frame: CGRect) {
    super.init(frame: frame)
    configure() 
    self.backgroundColor = Constant.Color.buttonBackground
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - CUSTOM FUNCTIONS
  private func configure() {
    addTarget(self, action: #selector(createButtonClicked), for: .touchUpInside)
    layer.cornerRadius = 25
    titleLabel?.textColor = .white
    titleLabel?.font = Constant.Font.poppinsRegular20
    translatesAutoresizingMaskIntoConstraints = false
  }
  @objc func createButtonClicked() {
    createButtonPressed?()
  }
}
