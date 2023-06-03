//
//  RegisterScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/18/23.
//

import UIKit

protocol RegisterScreenProtocol: AnyObject {
    func actionBackButton()
    func actionSingUpButton()
}

class RegisterScreen: UIView {
    
    weak var delegate: RegisterScreenProtocol?
    public func delegate(delegate: RegisterScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = TitleLabelCustom()
        label.textColor = .corTwo
        return label
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.tintColor = UIColor.corTwo
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corTwo
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let label = TextLabelCustom(title: "Nome:")
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite seu nome")
        return tf
    }()
    
    lazy var emailLabel: UILabel = {
        let label = TextLabelCustom(title: "Email:")
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite seu email:")
        tf.autocapitalizationType = .none
        return tf
    }()
    
    lazy var errorEmailLabel: UILabel = {
        let label = TextLabelCustom(title: "Email já cadastrado!")
        label.textColor = .red
        label.isHidden = true
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
        return tf
    }()
    
    lazy var confirmPasswordLabel: UILabel = {
        let label = TextLabelCustom(title: "Confirmar senha:")
        return label
    }()
    
    lazy var confirmPasswordTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite novamente sua senha:")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var errorLabel: UILabel = {
        let label = TextLabelCustom(title: "Senhas divergentes!")
        label.textColor = .red
        label.isHidden = true
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var singUpButton: UIButton = {
        let button = ButtonCustom(title: "Cadastrar")
        button.addTarget(self, action: #selector(tappedSingUpButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor.corOne
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTextField(delegate: UITextFieldDelegate){
        nameTextField.delegate = delegate
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
        confirmPasswordTextField.delegate = delegate
    }
    
    public func configButtonOn(){
        let name = nameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let confirmPassword = confirmPasswordTextField.text ?? ""
        
        if !name.isEmpty && !email.isEmpty && !password.isEmpty && !confirmPassword.isEmpty {
            singUpButton.setTitleColor(.corTwo, for: .normal)
            singUpButton.backgroundColor = .corOne
            singUpButton.isEnabled = true
        } else {
            singUpButton.setTitleColor(.lightGray, for: .normal)
            singUpButton.backgroundColor = .gray
            singUpButton.isEnabled = false
        }
        
        
    }
    
    public func passwordDivergentsLabel(){
        if passwordTextField.text != confirmPasswordTextField.text {
            errorLabel.isHidden = false
        } else {
            errorLabel.isHidden = true
        }
    }
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc private func tappedSingUpButton(){
        delegate?.actionSingUpButton()
    }
}

//MARK: - ViewCode

extension RegisterScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [titleLabel,backButton,contentView,nameLabel,nameTextField,emailLabel,emailTextField,errorEmailLabel,passwordLabel,passwordTextField,confirmPasswordLabel,confirmPasswordTextField,errorLabel,singUpButton]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            contentView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 40),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 30),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 5),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor,constant: 22),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor,constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            errorEmailLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor),
            errorEmailLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 22),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor,constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            confirmPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 22),
            confirmPasswordLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            confirmPasswordTextField.topAnchor.constraint(equalTo: confirmPasswordLabel.bottomAnchor,constant: 5),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            errorLabel.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor,constant: 5),
            errorLabel.leadingAnchor.constraint(equalTo: confirmPasswordLabel.leadingAnchor),
            
            singUpButton.bottomAnchor.constraint(equalTo: errorLabel.bottomAnchor,constant: 100),
            singUpButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            singUpButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            singUpButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }
}
