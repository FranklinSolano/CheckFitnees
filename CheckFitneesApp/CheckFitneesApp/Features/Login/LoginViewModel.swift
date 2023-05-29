//
//  LoginViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/29/23.
//

import UIKit
import Firebase

protocol LoginViewModelProtocol: AnyObject {
    func sucess()
    func error()
}

class LoginViewModel{
    
    weak var delegate: LoginViewModelProtocol?
    func delegate(delegate:LoginViewModelProtocol){
        self.delegate = delegate
    }
    
    func creatUserFirebase(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if error == nil {
                self.delegate?.sucess()
            } else {
                self.delegate?.error()
            }
        }
    }
    
    
    
    
    
    
    
    
}
