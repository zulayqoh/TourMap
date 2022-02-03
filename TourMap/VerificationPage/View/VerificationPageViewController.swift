//
//  VerificationPageViewController.swift
//  TourMap
//
//  Created by Decagon on 03/02/2022.
//

import UIKit

class VerificationPageViewController: UIViewController {

  let verificationPage = VerificationPageView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    configureVerificationPage()
  }
  
  func configureVerificationPage() {
    verificationPage.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(verificationPage)
    
    NSLayoutConstraint.activate([
      verificationPage.topAnchor.constraint(equalTo: view.topAnchor),
      verificationPage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      verificationPage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      verificationPage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
}
