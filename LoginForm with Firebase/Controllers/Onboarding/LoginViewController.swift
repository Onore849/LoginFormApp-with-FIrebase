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
        
        // replace returnkey to nextKey
        field.returnKeyType = .next
        
        field.leftViewMode = .always
        
        
        
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
        let backgroundImageView = UIImageView(image: UIImage(named: "gradient"))
        header.addSubview(backgroundImageView)
        
        return header
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        addSubViews()
        
        view.backgroundColor = .systemBackground
        
    }
    
    private func configureHeaderView() {
        
        // headerView内のbackground画像が１つ以外ならエラーが出る
        guard headerView.subviews.count == 1 else {

            return
        }
        
        // addsubviewは値の追加を表すためoptional型で帰ってくる
        // guard let 文でアンラップする
        guard let backgroundView = headerView.subviews.first else {

            return
        }
        
//        print(type(of: backgroundView))
        
        
        backgroundView.frame = headerView.bounds
        
        // add instagram logo
        let imageView = UIImageView(image: UIImage(named: "logo3"))
        headerView.addSubview(imageView)
        
        imageView.contentMode = .scaleAspectFit
        
        
        imageView.frame = CGRect(
            x: headerView.frame.width/4,
            y: view.safeAreaInsets.top,
            width: headerView.frame.width/2,
            height: headerView.frame.height - view.safeAreaInsets.top
        )
        
        
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
            y: 20,
            width: view.frame.width - 50,
            height: 52
        )
        
        passWordField.frame = CGRect(
            x: 25,
            y: 150,
            width: view.frame.width - 50,
            height: 52
        )
        
        
        configureHeaderView()
        
    }
    
    
    private func addSubViews() {
        
        // add view to headerView
        view.addSubview(headerView)
        
        // add view to textField
        view.addSubview(usernameEmailField)
        view.addSubview(passWordField)
        

    }
    
    

}
