//
//  CollectionViewCell.swift
//  OneScreenApp
//
//  Created by Роман Ковайкин on 30.09.2020.
//

import Foundation
import UIKit

extension UICollectionViewCell{
    
    func makeGradientBG(topColor: UIColor, BottomColor: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, BottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0 , y: 0.0)
        gradientLayer.cornerRadius = 16
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }

}
