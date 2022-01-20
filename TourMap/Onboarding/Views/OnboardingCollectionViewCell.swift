//
//  OnboardingCollectionViewCell.swift
//  TourMap
//
//  Created by Decagon on 19/01/2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
  
  static var identifier = "OnboardingCollectionViewCell"
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var desciptionLabel: UILabel!
  @IBOutlet weak var onboardingImageView: UIImageView!
  
  func setupOnboardingView(with data: OnboardingData) {
    titleLabel.text = data.title
    desciptionLabel.text = data.description
    onboardingImageView.image = UIImage(named: data.image)
  }
  
  @IBAction func getStartedButton(_ sender: Any) {
  }
}
