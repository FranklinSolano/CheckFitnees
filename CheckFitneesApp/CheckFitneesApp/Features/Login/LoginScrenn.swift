//
//  LoginScrenn.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/17/23.
//

import UIKit

protocol LoginScrennProtocol: AnyObject {
    func actionForgotPassword()
    func actionLogin()
    func actionRegister()
}

class LoginScrenn: UIView {
    
    weak var delegate: LoginScrennProtocol?
    func delegate(delegate: LoginScrennProtocol){
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CheckFitnees"
        label.textColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 40, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "imagePerson")
        return image
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email:"
        label.textColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.placeholder = "Digite seu email:"
        tf.layer.cornerRadius = 12
        tf.clipsToBounds = true
        tf.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        return tf
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha:"
        label.textColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite sua senha"
        tf.isSecureTextEntry = true
        tf.layer.cornerRadius = 12
        tf.clipsToBounds = true
        tf.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        return tf
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueceu senha?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        button.setTitleColor(UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(tapeedForgotPassword), for: .touchUpInside)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        button.setTitleColor(UIColor(red: 104/255, green: 84/255, blue: 84/255, alpha: 1), for: .normal)
        button.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(tapeedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Não tem conta ? Cadastre se", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        button.setTitleColor(UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(tapeedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor(red: 50/255, green: 42/255, blue: 42/255, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tapeedForgotPassword(){
        delegate?.actionForgotPassword()
    }
    
    @objc func tapeedLoginButton(){
        delegate?.actionLogin()
    }
    
    @objc func tapeedRegisterButton(){
        delegate?.actionRegister()
    }
}

//MARK: - ViewCode

extension LoginScrenn: ViewCode {
    func configElements() {
        addSubview(titleLabel)
        addSubview(imagePerson)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(forgotPasswordButton)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            imagePerson.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 13),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 190),
            imagePerson.widthAnchor.constraint(equalToConstant: 280),
            
            emailLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 18),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor,constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 12),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor,constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 5),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -25),
            
            loginButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -60),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 55),
            
            registerButton.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -30),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
