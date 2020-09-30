//
//  ViewController.swift
//  OneScreenApp
//
//  Created by Роман Ковайкин on 29.09.2020.
//

import UIKit
import EMTNeumorphicView

class ViewController: UIViewController {

    let settingButton: EMTNeumorphicButton = {
        let btn = EMTNeumorphicButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 25
        btn.setImage(#imageLiteral(resourceName: "settingsButton"), for: .normal)
        btn.backgroundColor = Colors.buttonBackGround
        btn.neumorphicLayer?.elementBackgroundColor = Colors.buttonBackGround.cgColor
        return btn
        
    }()
    
    let appNameLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "AppCleaner"
        lbl.textColor = Colors.textColor
        lbl.font = UIFont(name: "SonsieOne-Regular", size: 20)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        return lbl
    }()
    
    let totalAvailableLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Total/ Available space:"
        lbl.textColor = Colors.textColor
        lbl.font = UIFont(name: "SFProDisplay-Regular", size: 15)
        lbl.adjustsFontSizeToFitWidth = true
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        return lbl
    }()
    
    let availableAmountLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "160 Gb/ 2.5 Gb"
        lbl.textColor = Colors.textColor
        lbl.font = UIFont(name: "SFProDisplay-Semibold", size: 15)
        lbl.adjustsFontSizeToFitWidth = true
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let videoCircle: UIView = {
        let view = UIView()
        view.makeCircles(color: Colors.videoViewColor)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
   
    
    let photoCircle: UIView = {
        let view = UIView()
        view.makeCircles(color: Colors.photoViewColor)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let otherCircle: UIView = {
        let view = UIView()
        view.makeCircles(color: Colors.otherViewColor)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let contactsCircle: UIView = {
        let view = UIView()
        view.makeCircles(color: Colors.contactsViewColor)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let videoLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Video"
        lbl.font = UIFont(name: "SFProDisplay-Regular", size: 15)
        lbl.textColor = Colors.textColor
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let photoLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Photo"
        lbl.textAlignment = .left
        lbl.font = UIFont(name: "SFProDisplay-Regular", size: 15)
        lbl.textColor = Colors.textColor
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let otherFilesLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Other Files"
        lbl.textAlignment = .left
        lbl.font = UIFont(name: "SFProDisplay-Regular", size: 15)
        lbl.textColor = Colors.textColor
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let contactsLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Contacts"
        lbl.textAlignment = .left
        lbl.font = UIFont(name: "SFProDisplay-Regular", size: 15)
        lbl.textColor = Colors.textColor
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let cleanDuplicatesLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "SFProDisplay-Bold", size: 20)
        lbl.textColor = Colors.textColor
        lbl.textAlignment = .left
        lbl.text = "Clean Duplicates"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let cleanDuplicatesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 18
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CollectionViewCellCollectionViewCell.self, forCellWithReuseIdentifier: "CleanDuplicates")
        cv.backgroundColor = Colors.backGroundColor
        return cv
    }()
    
    let protectDataLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "SFProDisplay-Bold", size: 20)
        lbl.textColor = Colors.textColor
        lbl.textAlignment = .left
        lbl.text = "Protect Data"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let protectDataCollectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 18
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CollectionViewCellCollectionViewCell.self, forCellWithReuseIdentifier: "CleanDuplicates")
        cv.backgroundColor = .clear
        return cv
    }()

    let bottomImageView: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "BottomImage")
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override func viewWillLayoutSubviews() {
        lineView.roundCorners(corners: [.topLeft, .bottomLeft, .topRight, .bottomRight], radius:  30)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.backGroundColor
        [bottomImageView, settingButton, appNameLabel, totalAvailableLabel, availableAmountLabel ,lineView, videoCircle, otherCircle, contactsCircle, photoCircle, videoLabel, photoLabel, otherFilesLabel, contactsLabel, cleanDuplicatesLabel, cleanDuplicatesCollectionView,
        protectDataLabel, protectDataCollectionview, protectDataCollectionview]
            .forEach{self.view.addSubview($0)}
        
        setConstraints()
        
        cleanDuplicatesCollectionView.dataSource = self
        cleanDuplicatesCollectionView.delegate = self
        
        protectDataCollectionview.delegate = self
        protectDataCollectionview.dataSource = self
        
        lineView.makeLineView(video: 30, photo: 300, other: 20, contacts: 20)
    }
    
    func setConstraints(){
        settingButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 47).isActive = true
        settingButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
        settingButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        settingButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        appNameLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 59).isActive = true
        appNameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        appNameLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        appNameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        totalAvailableLabel.topAnchor.constraint(equalTo: self.appNameLabel.bottomAnchor, constant: 50).isActive = true
        totalAvailableLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        totalAvailableLabel.widthAnchor.constraint(equalToConstant: 170).isActive = true
        totalAvailableLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        availableAmountLabel.topAnchor.constraint(equalTo: totalAvailableLabel.topAnchor).isActive = true
        availableAmountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23).isActive = true
        availableAmountLabel.widthAnchor.constraint(equalToConstant: 110).isActive = true
        availableAmountLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
        lineView.topAnchor.constraint(equalTo: availableAmountLabel.bottomAnchor, constant: 17).isActive = true
        lineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21).isActive = true
        lineView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -21).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        videoCircle.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 28).isActive = true
        videoCircle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 63).isActive = true
        videoCircle.heightAnchor.constraint(equalToConstant: 18).isActive = true
        videoCircle.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        videoLabel.topAnchor.constraint(equalTo: videoCircle.topAnchor).isActive = true
        videoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 89).isActive = true
        videoLabel.trailingAnchor.constraint(equalTo: otherFilesLabel.leadingAnchor, constant: -10).isActive = true
        videoLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        photoCircle.topAnchor.constraint(equalTo: videoCircle.bottomAnchor, constant: 15).isActive = true
        photoCircle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 63).isActive = true
        photoCircle.heightAnchor.constraint(equalToConstant: 18).isActive = true
        photoCircle.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        photoLabel.topAnchor.constraint(equalTo: videoLabel.bottomAnchor, constant: 19).isActive = true
        photoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 89).isActive = true
        photoLabel.trailingAnchor.constraint(equalTo: contactsCircle.leadingAnchor,  constant: -10).isActive = true
        photoLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        otherCircle.topAnchor.constraint(equalTo: videoCircle.topAnchor).isActive = true
        otherCircle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -126).isActive = true
        otherCircle.heightAnchor.constraint(equalToConstant: 18).isActive = true
        otherCircle.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        otherFilesLabel.topAnchor.constraint(equalTo: videoLabel.topAnchor).isActive = true
        otherFilesLabel.leadingAnchor.constraint(equalTo: otherCircle.trailingAnchor, constant: 10).isActive = true
        otherFilesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        otherFilesLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        contactsCircle.topAnchor.constraint(equalTo: photoCircle.topAnchor).isActive = true
        contactsCircle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -126).isActive = true
        contactsCircle.heightAnchor.constraint(equalToConstant: 18).isActive = true
        contactsCircle.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        contactsLabel.topAnchor.constraint(equalTo:photoLabel.topAnchor).isActive = true
        contactsLabel.leadingAnchor.constraint(equalTo: contactsCircle.trailingAnchor, constant: 10).isActive = true
        contactsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        contactsLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        cleanDuplicatesLabel.topAnchor.constraint(equalTo: contactsLabel.bottomAnchor, constant: 50).isActive = true
        cleanDuplicatesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        cleanDuplicatesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        cleanDuplicatesLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        cleanDuplicatesCollectionView.topAnchor.constraint(equalTo: cleanDuplicatesLabel.bottomAnchor, constant: 20).isActive = true
        cleanDuplicatesCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14).isActive = true
        cleanDuplicatesCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -7).isActive = true
        cleanDuplicatesCollectionView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        protectDataLabel.topAnchor.constraint(equalTo: cleanDuplicatesCollectionView.bottomAnchor, constant: 35).isActive = true
        protectDataLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        protectDataLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        protectDataLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        protectDataCollectionview.topAnchor.constraint(equalTo: protectDataLabel.bottomAnchor, constant: 20).isActive = true
        protectDataCollectionview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14).isActive = true
        protectDataCollectionview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -7).isActive = true
        protectDataCollectionview.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        bottomImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bottomImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }


}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: 110)
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cleanDuplicatesCollectionView{
            return cleanDataArray.count
        }else{
            return protectDataArray.count
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.cleanDuplicatesCollectionView{
            let cell = cleanDuplicatesCollectionView.dequeueReusableCell(withReuseIdentifier: "CleanDuplicates", for: indexPath) as! CollectionViewCellCollectionViewCell
            cell.makeGradientBG(topColor: cleanDataArray[indexPath.row].backGroundColorFirst, BottomColor: cleanDataArray[indexPath.row].backGroundColorSecond)
            cell.layer.cornerRadius = 25
            cell.label.text = cleanDataArray[indexPath.row].label
            cell.photo.image = cleanDataArray[indexPath.row].image

            return cell
        }else{
            let cell = cleanDuplicatesCollectionView.dequeueReusableCell(withReuseIdentifier: "CleanDuplicates", for: indexPath) as! CollectionViewCellCollectionViewCell

            cell.makeGradientBG(topColor: protectDataArray[indexPath.row].backGroundColorFirst, BottomColor: protectDataArray[indexPath.row].backGroundColorSecond)
            cell.layer.cornerRadius = 25
            cell.label.text = protectDataArray[indexPath.row].label
            cell.photo.image = protectDataArray[indexPath.row].image

            return cell
        }
        
    }


}
