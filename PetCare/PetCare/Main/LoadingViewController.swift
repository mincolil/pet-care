//
//  LoadingViewController.swift
//  PetCare
//
//  Created by Apple on 09/01/2024.
//

import Foundation
import UIKit
//import Firebase

class LoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        if Core.shared.isFirstLauchApp() {
            self.gotoIntro()
        } else {
            self.gotoMain()
        let token = Core.shared.getToken()

//        if token != "" {
//            print(token)
//            let userCollection = Firestore.firestore().collection("users")
//
//            userCollection.whereField("token", isEqualTo: token).limit(to: 1)
//                .getDocuments{ (querySnapshot, error) in
//                    if let error = error {
//                        print(error)
//                    } else {
//                        if querySnapshot!.documents.count == 1 {
//                            Core.shared.setIsUserLogin(true)
//                            print("goto main")
//
//                            self.gotoMain()
//
//                        } else {
//                            self.gotoLogin()
//                        }
//                    }
//                }
//
//        } else {
//            self.gotoLogin()
//        }
    }
    }
    
    func gotoMain() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
     let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.modalPresentationStyle = .fullScreen

        self.present(vc, animated: false, completion: nil)
    }

    func gotoIntro() {
        let storyboard = UIStoryboard(name: "Introduction", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "IntroductionViewController") as! IntroductionViewController
        vc.modalPresentationStyle = .fullScreen
        
        self.present(vc, animated: false, completion: nil)
    }

//    func gotoLogin() {
//        let storyboard = UIStoryboard(name: "Auth", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
//        vc.modalPresentationStyle = .fullScreen
//
//        self.present(vc, animated: true, completion: nil)
//    }
    
}
