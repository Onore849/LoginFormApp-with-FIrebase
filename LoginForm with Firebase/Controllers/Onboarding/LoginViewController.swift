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
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        addSubViews()
        
        view.backgroundColor = .systemBackground
        
    }
    
    // 作ったoutletの位置を指定する
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        usernameEmailField.frame = CGRect(
            x: 25,
            y: 50,
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
        
        // textFieldを追加する
        view.addSubview(usernameEmailField)
        view.addSubview(passWordField)
    }
    
    

}
