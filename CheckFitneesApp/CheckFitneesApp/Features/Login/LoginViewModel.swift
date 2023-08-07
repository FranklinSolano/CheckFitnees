//
//  LoginViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/29/23.
//

import Firebase

protocol LoginViewModelProtocol: AnyObject {
    func success()
    func error()
    func buttonOn()
    func buttonOf()
}

 final class LoginViewModel{
    
    weak var delegate: LoginViewModelProtocol?
    func delegate(delegate:LoginViewModelProtocol){
        self.delegate = delegate
    }
    
    func creatUserFirebase(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if error == nil {
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
     
    func configButtonOn(email: String, password: String){
        if !email.isEmpty && !password.isEmpty {
            self.delegate?.buttonOn()
        } else {
            self.delegate?.buttonOf()
        }
    }
}
