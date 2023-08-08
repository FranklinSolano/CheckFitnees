//
//  ForgotPasswordViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/29/23.
//

import Firebase

protocol ForgotPasswordViewModelProtocol: AnyObject {
    func success()
    func error()
    func buttonOn()
    func buttonOf()
    func emailDoesNotExist()
}

final class ForgotPasswordViewModel {
    
    var delegate: ForgotPasswordViewModelProtocol?
    func delegate(delegate: ForgotPasswordViewModelProtocol){
        self.delegate = delegate
    }
    
    func sendPassword(email:String){
        Auth.auth().sendPasswordReset(withEmail: email)
    }
    
    
    func checkEmailFirebase(email:String){
        Auth.auth().fetchSignInMethods(forEmail: email) { (methods, error ) in
            if error != nil {
                self.delegate?.error()
            } else if let methods = methods {
                if methods.isEmpty {
                    self.delegate?.emailDoesNotExist()
                } else {
                    self.delegate?.success()
                }
            } else {
                self.delegate?.emailDoesNotExist()
            }
        }
    }
    
    func configButtonOn(email: String){
        if !email.isEmpty {
            self.delegate?.buttonOn()
        } else {
            self.delegate?.buttonOf()
        }
    }
}


