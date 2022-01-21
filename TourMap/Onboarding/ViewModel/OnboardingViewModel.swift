//
//  OnboardingViewModel.swift
//  TourMap
//
//  Created by Decagon on 19/01/2022.
//

import Foundation

class OnboardingViewModel {
  var data: [OnboardingData] = [OnboardingData(title: Constant.Content.onboardingTitle1, description: Constant.Content.onboardingDescription1, image: Constant.Image.onboardingImage1!), OnboardingData(title: Constant.Content.onboardingTitle2, description: Constant.Content.onboardingDescription2, image: Constant.Image.onboardingImage2!), OnboardingData(title: Constant.Content.onboardingTitle1, description: Constant.Content.onboardingDescription3, image: Constant.Image.onboardingImage3!)]
  var currentPage = 0
}
