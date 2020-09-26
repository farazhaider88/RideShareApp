//
//  ViewController.swift
//  MapWithFirebase
//
//  Created by Faraz Haider on 26/09/2020.
//  Copyright © 2020 Faraz Haider. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    func signInSignUpUser(){
        FirebaseAuth.Auth.auth().signIn(withEmail: "farazhaider88@yahoo.com", password: "123456") { (user, error) in
            if error == nil{
                if let user = user{
                    let userData = ["provider" : user.user.providerID] as [String : Any]
                    DataService.instance.createFirebaseDBUser(uid: user.user.uid, userData: userData, isDriver: false)
                }
                self.dismiss(animated: true, completion: nil)
            }else{
                FirebaseAuth.Auth.auth().createUser(withEmail: "farazhaider88@yahoo.com", password: "123456") { (user, error) in
                    if error != nil{
                        print(error.debugDescription)
                    }else{
                        if let user = user{
                            let userData = ["provider" : user.user.providerID] as [String : Any]
                            DataService.instance.createFirebaseDBUser(uid: user.user.uid, userData: userData, isDriver: false)
                        }
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
            
        }
    }
    
    
    func signInSignUpDriver(){
        FirebaseAuth.Auth.auth().signIn(withEmail: "farazhaider88@yahoo.com", password: "123456") { (user, error) in
            if error == nil{
                if let user = user{
                    let userData = ["provider" : user.user.providerID, "userIsDriver":true,"isPickupModeEnabled":false,"driverIsOnTrip":false] as [String : Any]
                    DataService.instance.createFirebaseDBUser(uid: user.user.uid, userData: userData, isDriver: true)
                }
                self.dismiss(animated: true, completion: nil)
            }else{
                FirebaseAuth.Auth.auth().createUser(withEmail: "farazhaider88@yahoo.com", password: "123456") { (user, error) in
                    if error != nil{
                        print(error.debugDescription)
                    }else{
                        if let user = user{
                            let userData = ["provider" : user.user.providerID, "userIsDriver":true,"isPickupModeEnabled":false,"driverIsOnTrip":false] as [String : Any]
                            DataService.instance.createFirebaseDBUser(uid: user.user.uid, userData: userData, isDriver: true)
                        }
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
            
        }
    }
    
}
