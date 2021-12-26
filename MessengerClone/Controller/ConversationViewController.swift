//
//  ConversationViewController.swift
//  MessengerClone
//
//  Created by Home on 12/23/21.
//

import UIKit

class ConversationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        let isLoggedin = UserDefaults.standard.bool(forKey: "logged_in")
              if !isLoggedin{
                  let vc = LoginViewController()
                  let nv = UINavigationController(rootViewController: vc)
                  nv.modalPresentationStyle = .fullScreen
                  present(nv, animated: true)
              }
    }

    

}
