//
//  File.swift
//  MapWithFirebase
//
//  Created by Faraz Haider on 26/09/2020.
//  Copyright © 2020 Faraz Haider. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

let DB_Base = Database.database().reference()

class DataService{
    static let instance = DataService()
    
    private var _REF_BASE = DB_Base
    private var _REF_USERS = DB_Base.child("users")
    private var _REF_DRIVERS  = DB_Base.child("drivers")
    private var _REF_TRIPS = DB_Base.child("trips")
    
    var REF_BASE: DatabaseReference{
        return _REF_BASE
    }
    
    var REF_USERS : DatabaseReference{
        return _REF_USERS
    }
    
    var REF_DRIVERS : DatabaseReference{
        return _REF_DRIVERS
    }
    
    var REF_TRIPS : DatabaseReference{
        return _REF_TRIPS
    }
    
    func createFirebaseDBUser(uid:String, userData : Dictionary<String, Any>, isDriver : Bool){
        if isDriver{
            REF_DRIVERS.child(uid).updateChildValues(userData)
        }else{
            REF_USERS.child(uid).updateChildValues(userData)
        }
    }
}
