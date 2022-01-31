//
//  CustomLabel.swift
//  TourMap
//
//  Created by Decagon on 22/01/2022.
//

import Foundation
import UIKit

class TitleLabel: UILabel {
  
  // MARK: - INITIALIZERS
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureView()
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  private func configureView() {
    font = Constant.Font.poppinsSemibold33
    textColor = Constant.Color.buttonBackground
    adjustsFontSizeToFitWidth = true
    minimumScaleFactor = 0.9
    lineBreakMode = .byTruncatingTail
    translatesAutoresizingMaskIntoConstraints = false
  }
}
