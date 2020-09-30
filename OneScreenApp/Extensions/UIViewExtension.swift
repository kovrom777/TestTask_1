//
//  UIViewExtension.swift
//  OneScreenApp
//
//  Created by Роман Ковайкин on 29.09.2020.
//

import Foundation
import UIKit

extension UIView{

    func makeLineView(video: Float, photo: Float, other: Float, contacts: Float){
        
        let videoView = UIView()
        
        videoView.translatesAutoresizingMaskIntoConstraints = false
        videoView.backgroundColor = Colors.videoViewColor
        let photoView = UIView()
        photoView.translatesAutoresizingMaskIntoConstraints = false
        photoView.backgroundColor = Colors.photoViewColor
        let otherView = UIView()
        otherView.translatesAutoresizingMaskIntoConstraints = false
        otherView.backgroundColor = Colors.otherViewColor
        let contactsView = UIView()
        contactsView.translatesAutoresizingMaskIntoConstraints = false
        contactsView.backgroundColor = Colors.contactsViewColor
        
        [videoView, photoView, otherView, contactsView].forEach{self.addSubview($0)}
        
        //MARK: - Setting containts for views
        videoView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        videoView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        videoView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        videoView.widthAnchor.constraint(equalToConstant: CGFloat(video)).isActive = true
        
        photoView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        photoView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        photoView.leadingAnchor.constraint(equalTo: videoView.trailingAnchor).isActive = true
        photoView.widthAnchor.constraint(equalToConstant: CGFloat(photo)).isActive = true
        
        otherView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        otherView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        otherView.leadingAnchor.constraint(equalTo: photoView.trailingAnchor).isActive = true
        otherView.widthAnchor.constraint(equalToConstant: CGFloat(other)).isActive = true
        
        contactsView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contactsView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        contactsView.leadingAnchor.constraint(equalTo: otherView.trailingAnchor).isActive = true
        contactsView.widthAnchor.constraint(equalToConstant: CGFloat(contacts)).isActive = true
        
    }
    
    func makeCircles(color: UIColor){
        self.backgroundColor = color
        self.layer.cornerRadius = 9
    }

    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
