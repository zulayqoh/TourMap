//
//  UITextField+Extension.swift
//  TourMap
//
//  Created by Decagon on 28/01/2022.
//

import UIKit

extension UITextField {

    func setRightImage(imageName: String) {

        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
        imageView.image = UIImage(systemName: imageName)
        self.rightView = imageView;
        self.rightViewMode = .always
    }
}
