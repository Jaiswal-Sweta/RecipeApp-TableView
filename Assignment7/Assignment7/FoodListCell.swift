//
//  FoodListCell.swift
//  Assignment7
//
//  Created by DCS on 09/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class FoodListCell: UITableViewCell {

    private let myImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 75
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let TitleLabel : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .brown
        label.shadowColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.font = UIFont(name: "HoeflerText-BlackItalic", size: 25)
        label.textAlignment = .left
        label.backgroundColor = .clear
        return label
    }()
    private let SubDescLabel : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .black
        label.shadowColor = .brown
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.numberOfLines = 10
        label.font = UIFont(name: "HoeflerText-Black", size: 15)
        label.textAlignment = .left
        label.backgroundColor = .clear
        return label
    }()
    
    func setupCityCellWith(title name : String,f Fooddesc: String)
    {
        contentView.addSubview(myImageView)
        contentView.addSubview(TitleLabel)
        contentView.addSubview(SubDescLabel)
        
        myImageView.frame = CGRect(x : 20, y : 10, width: 150 ,height: 150)
        TitleLabel.frame = CGRect(x: 180 ,y: 0 ,width: 200,height: 50)
        SubDescLabel.frame = CGRect(x: 180 ,y: 50 ,width: 180,height: 110)
        
        myImageView.image = UIImage(named: name)
        TitleLabel.text = name
        SubDescLabel.text = Fooddesc
    }
}
