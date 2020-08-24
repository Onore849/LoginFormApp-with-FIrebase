//
//  LoginViewController.swift
//  LoginForm with Firebase
//
//  Created by 野澤拓己 on 2020/08/24.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // create outlet parts
    
    // create textField
    private let usernameEmailField: UITextField = {
       
        let field = UITextField()
        field.placeholder = "username or email ..."
        
        
        return field
        
    }()
    
    
    private let passWordField: UITextField = {
        
        let field = UITextField()
        field.placeholder = "password"
        
        return field
    }()
    
    
    // create header View
    private let headerView: UIView = {
        
        let header = UIView()
        
        // 指定した領域内でのみ画像を表示する
        header.clipsToBounds = true
        
        // UIView()に背景画像を追加する
        let backgroundImageView = UIImageView(image: UIImage(named: "bg"))
        header.addSubview(backgroundImageView)
        
        return header
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        addSubViews()
        
        view.backgroundColor = .systemBackground
        
    }
    
    
    
    // 作ったoutletの位置を指定する
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // headerView
        headerView.frame = CGRect(
            x: 0,
            y: 0,
            width: view.frame.width,
            height: view.frame.height / 3
        )
        
        // textField
        usernameEmailField.frame = CGRect(
            x: 25,
            y: headerView.bottom + 20,
            width: view.frame.width - 50,
            height: 52
        )
        
        passWordField.frame = CGRect(
            x: 25,
            y: 150,
            width: view.frame.width - 50,
            height: 52
        )
        

        
        
        
    }
    
    
    private func addSubViews() {
        
        // add view to headerView
        view.addSubview(headerView)
        
        // add view to textField
        view.addSubview(usernameEmailField)
        view.addSubview(passWordField)
        

    }
    
    

}
