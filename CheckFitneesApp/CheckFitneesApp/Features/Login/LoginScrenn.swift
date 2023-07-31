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
        label.textColor = .corOne
        return label
    }()
    
    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo1")
        return image
    }()
    
    lazy var emailLabel: UILabel = {
        let label = TextLabelCustom(title: "Email:")
        label.textColor = .corOne
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite seu email"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 17
        tf.backgroundColor = .corTwo
        tf.textColor = .white
        tf.text = "franklin@gmail.com"
        // Adicionar image no TextField ao lado esquerdo
        let imageLogin = UIImageView(image: UIImage(named: "logoemail"))
        imageLogin.frame = CGRect(x: 8, y: 0, width: 24, height: 24)
        imageLogin.contentMode = .center
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        containerView.addSubview(imageLogin)
        
        tf.leftView = containerView
        tf.leftViewMode = .always
        tf.layer.borderColor = UIColor.corOne.cgColor
        tf.layer.borderWidth = 2
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
        label.textColor = .corOne
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite sua senha"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 17
        tf.backgroundColor = .corTwo
        tf.textColor = .white
        tf.text = "solano2008"
        tf.isSecureTextEntry = true
        // Adicionar image no TextField ao lado esquerdo
        let imageLogin = UIImageView(image: UIImage(named: "logosenha"))
        imageLogin.frame = CGRect(x: 8, y: 0, width: 24, height: 24)
        imageLogin.contentMode = .center
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        containerView.addSubview(imageLogin)
        
        tf.leftView = containerView
        tf.leftViewMode = .always
        tf.layer.borderColor = UIColor.corOne.cgColor
        tf.layer.borderWidth = 2
        return tf
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
        backgroundColor = UIColor.corTwo
        hideErrorLabel()
        for name in UIFont.fontNames(forFamilyName: "Roboto") {
            print(name)
        }
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
            loginButton.setTitleColor(.white, for: .normal)
            loginButton.backgroundColor = .corTwo
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
        let views: [UIView] = [imagePerson,titleLabel,emailLabel,emailTextField,errorLabel,passwordLabel,passwordTextField,forgotPasswordButton,loginButton,registerButton]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            
            imagePerson.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 25),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 88),
            imagePerson.widthAnchor.constraint(equalToConstant: 98),
            
            titleLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 5),
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
