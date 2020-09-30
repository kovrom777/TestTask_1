//
//  File.swift
//  OneScreenApp
//
//  Created by Роман Ковайкин on 30.09.2020.
//

import Foundation
import UIKit

struct collectionView{
    var image = UIImage()
    var label = String()
    var backGroundColorFirst = UIColor()
    var backGroundColorSecond = UIColor()
    
    init(image: UIImage, label: String, backColorFirst: UIColor, backColorSecond: UIColor) {
        self.image = image
        self.label = label
        self.backGroundColorFirst = backColorFirst
        self.backGroundColorSecond = backColorSecond
    }
}


let cleanDataArray: [collectionView] = [
    collectionView(image: #imageLiteral(resourceName: "ContactsImage"), label: "Contacts", backColorFirst: Colors.firstColorForContactsGradient, backColorSecond: Colors.secondColorForContactsGradient),
    collectionView(image: #imageLiteral(resourceName: "PhotosImage"), label: "Photos", backColorFirst: Colors.firstColorForPhotosGradient, backColorSecond: Colors.secondColorForPhotosGradient),
    collectionView(image: #imageLiteral(resourceName: "VideoImage"), label: "Videos", backColorFirst: Colors.firstColorForVideosGradient, backColorSecond: Colors.secondColorForVideosGradient)
]


let protectDataArray: [collectionView] = [
    collectionView(image: #imageLiteral(resourceName: "safeFolder"), label: "Safe Folder", backColorFirst: Colors.firstColorForSafeFolderGradient, backColorSecond: Colors.secondColorForSafeFolderGradient),
    collectionView(image: #imageLiteral(resourceName: "safeBrowser"), label: "Safe Browser", backColorFirst: Colors.firstColorForSafeBrowserGradient, backColorSecond: Colors.secondColorForSafeBrowserGradient)
]
