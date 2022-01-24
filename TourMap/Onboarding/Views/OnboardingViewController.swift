//
//  OnboardingViewController.swift
//  TourMap
//
//  Created by Decagon on 19/01/2022.
//

import UIKit

class OnboardingViewController: UIViewController {
  var viewModel = OnboardingViewModel()
  
  @IBOutlet weak var collectionView: UICollectionView!
  
  @IBOutlet weak var pageControl: UIPageControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.delegate = self
    collectionView.dataSource = self
  }
  
  @IBAction func getStartedButton(_ sender: UIButton) {
    navigationController?.pushViewController(SetupViewController(), animated: true)
  }
}

extension OnboardingViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return viewModel.data.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
    cell.setupOnboardingView(with: viewModel.data[indexPath.item])
    return cell
  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
  }
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    let width = scrollView.frame.width
    var activePage = viewModel.currentPage
    activePage = Int(scrollView.contentOffset.x/width)
    pageControl.currentPage = activePage
  }
  
}
