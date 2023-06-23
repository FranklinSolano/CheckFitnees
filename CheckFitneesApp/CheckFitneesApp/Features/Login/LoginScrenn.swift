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
        let label = TitleLabelCustom()
        label.textColor = .corTwo
        return label
    }()
    
    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "figure.strengthtraining.traditional")
        image.tintColor = UIColor.corTwo
        return image
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corTwo
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var emailLabel: UILabel = {
        let label = TextLabelCustom(title: "Email:")
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite seu email:")
        tf.autocapitalizationType = .none
        tf.text = "franklin@gmail.com" 
        return tf
    }()
    
    lazy var errorLabel: UILabel = {
        let label = TextLabelCustom(title: "Usuário e/ou senha incorreta")
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = TextLabelCustom(title: "Senha:")
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite sua senha:")
        tf.isSecureTextEntry = true
        tf.text = "solano2008"
        return tf
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueceu senha?", for: .normal)
        button.titleLabel?.font = UIFont(name: "PingFang SC", size: 15)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.addTarget(self, action: #selector(tapeedForgotPassword), for: .touchUpInside)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = ButtonCustom(title: "Entrar")
        button.isEnabled = false
        button.setTitleColor(.gray, for: .normal)
        button.addTarget(self, action: #selector(tapeedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Não tem conta ? Cadastre se", for: .normal)
        button.titleLabel?.font = UIFont(name: "PingFang SC", size: 16)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.addTarget(self, action: #selector(tapeedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor.corOne
        hideErrorLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTextField(delegate: UITextFieldDelegate){
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
    public func configButtonOn(){
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            loginButton.setTitleColor(.corTwo, for: .normal)
            loginButton.backgroundColor = .corOne
            loginButton.isEnabled = true
        } else {
            loginButton.setTitleColor(.lightGray, for: .normal)
            loginButton.backgroundColor = .gray
            loginButton.isEnabled = false
        }
        
    }
    
   public func hideErrorLabel(){
          errorLabel.isHidden = true
      }
      
  public func showErrorLabel(){
          errorLabel.isHidden = false
      }
    
    @objc private func tapeedForgotPassword(){
        delegate?.actionForgotPassword()
    }
    
    @objc private func tapeedLoginButton(){
        delegate?.actionLogin()
    }
    
    @objc private func tapeedRegisterButton(){
        delegate?.actionRegister()
    }
}

//MARK: - ViewCode

extension LoginScrenn: ViewCode {
    func configElements() {
        let views: [UIView] = [titleLabel,imagePerson,contentView,emailLabel,emailTextField,errorLabel,passwordLabel,passwordTextField,forgotPasswordButton,loginButton,registerButton]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            imagePerson.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 30),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 105),
            imagePerson.widthAnchor.constraint(equalToConstant: 150),
            
            contentView.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 20),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            emailLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 40),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor,constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            errorLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 5),
            errorLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            
            passwordLabel.topAnchor.constraint(equalTo: errorLabel.bottomAnchor,constant: 10),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor,constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 5),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -25),
            
            loginButton.bottomAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor,constant: 100),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 55),
            
            registerButton.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -30),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
