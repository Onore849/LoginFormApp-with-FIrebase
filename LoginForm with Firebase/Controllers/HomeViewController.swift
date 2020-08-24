//
//  HomeViewController.swift
//  LoginForm with Firebase
//
//  Created by 野澤拓己 on 2020/08/24.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        handleNotAuthenticated()
        
    }
    
    
    // ログインしてなかったらログイン画面に遷移させる処理
    private func handleNotAuthenticated() {
        
        // check auth status
        // .currentUserは現在ログインしているUserを取得できる
        
        if Auth.auth().currentUser == nil {
            
            let loginVC = LoginViewController()
            
            loginVC.modalPresentationStyle = .fullScreen
            
            present(loginVC, animated: true)
            
        }
        
        
        
    }

}
