//
//  SpecificFoodDetailViewController.swift
//  Assignment7
//
//  Created by DCS on 09/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class SpecificFoodDetailViewController: UIViewController {

    private let myimg:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 9
        img.clipsToBounds = true
        img.image = UIImage(named: (UserDefaults.standard.string(forKey: "FoodName") ?? nil)!)
        return img
    }()
    
    private let TitleLabel : UILabel = {
        let label = UILabel()
        label.text = UserDefaults.standard.string(forKey: "FoodName")!
        label.textColor = .black
        label.shadowColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.font = UIFont(name: "HoeflerText-BlackItalic", size: 40)
        label.textAlignment = .center
        label.backgroundColor = .clear
        return label
    }()
    
    private let DescLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.shadowColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.font = UIFont(name: "HoeflerText-BlackItalic", size: 20)
        label.textAlignment = .left
        label.backgroundColor = .clear
        label.numberOfLines = 15
        label.text = """
        Step 1
        Brush a pan with ghee and fry the paneer on all the sides until browned.
        Remove the paneer from the pan and keep aside.\n
        Step 2
        For the gravy, heat oil and ghee in a pan.\n
        Step 3
        Add onion and fry until it turns slightly brown.\n
        Step 4
        Add ginger garlic paste and fry until onion turns nicely browned.\n
        Step 5
        Now add coriander powder, turmeric powder, red chilli powder, cumin powder,
        garam masala powder,besan and salt and fry for a minute.\n
        """
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(myimg)
        view.addSubview(TitleLabel)
        view.addSubview(DescLabel)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
     
        TitleLabel.frame = CGRect(x: 20, y: 60, width: view.frame.size.width-40, height: 50)
        myimg.frame = CGRect(x: 20, y: 110, width : view.frame.size.width-40, height: 200)
        DescLabel.frame = CGRect(x: 20, y: 270, width: view.frame.size.width-40, height: 400)
        
    }

}
