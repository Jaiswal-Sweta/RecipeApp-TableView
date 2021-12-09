//
//  LoginRecipeViewController.swift
//  Assignment7
//
//  Created by DCS on 09/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class LoginRecipeViewController: UIViewController {
    
    private let TitleLabel : UILabel = {
        let label = UILabel()
        label.text = "Let's Cook in"
        label.textColor = .brown
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.font = UIFont(name: "HoeflerText-BlackItalic", size: 40)
        label.textAlignment = .center
        label.backgroundColor = .clear
        label.shadowColor = .white
        return label
    }()
    
    private let SubTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "Delicious Food"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.font = UIFont(name: "HoeflerText-BlackItalic", size: 20)
        label.textAlignment = .center
        label.backgroundColor = .clear
         label.shadowColor = .white
        return label
    }()
    
    private let PasswordTextfield: UITextField = {
       let textField = UITextField()
       textField.attributedPlaceholder =
        NSAttributedString(string: "Enter Your Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
       textField.text = ""
       textField.textColor = .white
       textField.textAlignment = .center
       textField.backgroundColor = .clear
       textField.layer.borderWidth = 2
       textField.layer.borderColor = UIColor.white.cgColor
       textField.layer.cornerRadius = 15
       textField.isSecureTextEntry = true
       return textField
    }()
    
    private let UsernameTextfield: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder =
            NSAttributedString(string: "Enter Your Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textField.text = ""
        textField.textColor = .white
        textField.textAlignment = .center
        textField.backgroundColor = .clear
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.white.cgColor
        textField.layer.cornerRadius = 15
        return textField
    }()
    
    private let LoginButton : UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(OnLoginClicked), for: .touchUpInside)
        button.backgroundColor = UIColor(cgColor: UIColor.white.cgColor)
        button.layer.cornerRadius = 20
        button.setTitleColor(.brown, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg3")!)
        
        view.addSubview(TitleLabel)
        view.addSubview(SubTitleLabel)
        view.addSubview(UsernameTextfield)
        view.addSubview(PasswordTextfield)
        view.addSubview(LoginButton)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        TitleLabel.frame = CGRect(x: 10, y: 160, width: view.frame.size.width, height: 50)
        SubTitleLabel.frame = CGRect(x: 50, y: 180, width: view.frame.size.width, height: 70)
        UsernameTextfield.frame = CGRect(x: 70, y: 450, width: view.frame.size.width-150, height: 35)
        PasswordTextfield.frame = CGRect(x: 70, y: 490, width: view.frame.size.width-150, height: 35)
        LoginButton.frame = CGRect(x: 70, y: 533, width: view.frame.size.width-150, height: 35)
    }
    
    @objc func OnLoginClicked()
    {
        if (UsernameTextfield.text == "Sweta" && PasswordTextfield.text == "Sweta")
        {
            let n = AllFoodListViewController()
            navigationController?.pushViewController(n, animated: true)
            present(n,animated: false)
        }
        else
        {
            let alert = UIAlertController(title: title, message: "Invalid Credentials", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Try Again", style: .cancel))
            DispatchQueue.main.async {
                self.present(alert,animated: true)
            }
        }
       
    }
}
