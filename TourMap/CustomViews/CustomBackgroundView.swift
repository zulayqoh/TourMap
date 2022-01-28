//
//  CustomBackgroundView.swift
//  TourMap
//
//  Created by Decagon on 28/01/2022.
//

import UIKit

class CustomBackgroundView: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    configureCustomBackgroundView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func configureCustomBackgroundView() {
    dropShadow()
    backgroundColor = .white
    cornerRadius = 15
  }
  
}
