//
//  CollecgionViewCellCollectionViewCell.swift
//  OneScreenApp
//
//  Created by Роман Ковайкин on 30.09.2020.
//

import UIKit

class CollectionViewCellCollectionViewCell: UICollectionViewCell {
    
    var photo: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    var label: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        lbl.textAlignment = .left
        lbl.adjustsFontSizeToFitWidth = true
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
    
        [photo, label].forEach{self.contentView.addSubview($0)}
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        photo.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 21).isActive = true
        photo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 14).isActive = true
        photo.widthAnchor.constraint(equalToConstant: 40).isActive = true
        photo.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        label.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 19).isActive = true
        label.leadingAnchor.constraint(equalTo: photo.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -7).isActive = true
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
}
