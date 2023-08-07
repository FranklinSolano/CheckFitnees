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

 final class LoginScreen: UIView {
    
    weak var delegate: LoginScrennProtocol?
    func delegate(delegate: LoginScrennProtocol){
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = TitleLabelCustom()
        label.textColor = .primaryColor
        return label
    }()
    
    lazy var personImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo1")
        return image
    }()
    
    lazy var emailLabel: UILabel = {
        let label = TextLabelCustom(title: "Email:")
        label.textColor = .primaryColor
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.placeholder = "Digite seu email"
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 17
        textField.backgroundColor = .secondaryColor
        textField.textColor = .white
        textField.text = "franklin@gmail.com"
        // Adicionar image no TextField ao lado esquerdo
        let imageLogin = UIImageView(image: UIImage(named: "logoemail"))
        imageLogin.frame = CGRect(x: 8, y: 0, width: 24, height: 24)
        imageLogin.contentMode = .center
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        containerView.addSubview(imageLogin)
        
        textField.leftView = containerView
        textField.leftViewMode = .always
        textField.layer.borderColor = UIColor.primaryColor.cgColor
        textField.layer.borderWidth = 2
        return textField
    }()
    
    lazy var errorLabel: UILabel = {
        let label = TextLabelCustom(title: "Usuário e/ou senha incorreta")
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 14)
        label.isHidden = true
        return label
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = TextLabelCustom(title: "Senha:")
        label.textColor = .primaryColor
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.placeholder = "Digite sua senha"
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 17
        textField.backgroundColor = .secondaryColor
        textField.textColor = .white
        textField.text = "solano2008"
        textField.isSecureTextEntry = true
        // Adicionar image no TextField ao lado esquerdo
        let imageLogin = UIImageView(image: UIImage(named: "logosenha"))
        imageLogin.frame = CGRect(x: 8, y: 0, width: 24, height: 24)
        imageLogin.contentMode = .center
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        containerView.addSubview(imageLogin)
        
        textField.leftView = containerView
        textField.leftViewMode = .always
        textField.layer.borderColor = UIColor.primaryColor.cgColor
        textField.layer.borderWidth = 2
        return textField
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueceu a senha?", for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 14)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(tapeedForgotPassword), for: .touchUpInside)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = ButtonCustom(title: "Entrar")
        button.clipsToBounds = true
        button.layer.cornerRadius = 17
        button.isEnabled = false
        button.setTitleColor(.gray, for: .normal)
        button.addTarget(self, action: #selector(tapeedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Não tem conta ? Cadastre se", for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 16)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(tapeedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor.secondaryColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTextField(delegate: UITextFieldDelegate){
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
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

extension LoginScreen: ViewCode {
    func configElements() {
        [personImage,titleLabel,emailLabel,emailTextField,errorLabel,passwordLabel,passwordTextField,forgotPasswordButton,loginButton,registerButton].forEach({addSubview($0)})
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            
            personImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 25),
            personImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            personImage.heightAnchor.constraint(equalToConstant: 88),
            personImage.widthAnchor.constraint(equalToConstant: 98),
            
            titleLabel.topAnchor.constraint(equalTo: personImage.bottomAnchor,constant: 5),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            emailLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor,constant: 100),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 22),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor,constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            errorLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 5),
            errorLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            
            passwordLabel.topAnchor.constraint(equalTo: errorLabel.bottomAnchor,constant: 10),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 22),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor,constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 10),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -35),
            
            loginButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -70),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor,constant: 20),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
