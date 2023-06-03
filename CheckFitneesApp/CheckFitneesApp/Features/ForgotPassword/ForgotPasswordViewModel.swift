//
//  ForgotPasswordViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/29/23.
//

import UIKit
import Firebase

protocol ForgotPasswordViewModelProtocol: AnyObject {
    func sucess()
    func error()
}

class ForgotPasswordViewModel {
    
    var delegate: ForgotPasswordViewModelProtocol?
    func delegate(delegate: ForgotPasswordViewModelProtocol){
        self.delegate = delegate
    }
    
    func sendPassword(email:String){
        Auth.auth().sendPasswordReset(withEmail: email)
    }
    
    
    func checkEmailFirebase(email:String, label: UILabel){
        Auth.auth().fetchSignInMethods(forEmail: email) { (methods, error ) in
            if error != nil {
                self.delegate?.error()
            } else if let methods = methods {
                if methods.isEmpty {
                    label.isHidden = false
                } else {
                    label.isHidden = true
                    self.delegate?.sucess()
                }
            } else {
                label.isHidden = false
            }
        }
    }
}


