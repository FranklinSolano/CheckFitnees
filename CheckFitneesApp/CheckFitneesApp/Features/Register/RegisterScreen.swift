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
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CheckFitness"
        label.textColor = UIColor.corTwo
        label.font = UIFont(name: "Chalkduster", size: 30)
        label.textAlignment = .center
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
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 16)
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite seu nome:"
        tf.layer.cornerRadius = 12
        tf.clipsToBounds = true
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 16)
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
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 16)
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite sua senha:"
        tf.layer.cornerRadius = 12
        tf.clipsToBounds = true
        tf.backgroundColor = UIColor.corTextField
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var confirmPasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Confirm Password:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 16)
        return label
    }()
    
    lazy var confirmPasswordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite sua senha novamente:"
        tf.layer.cornerRadius = 12
        tf.clipsToBounds = true
        tf.backgroundColor = UIColor.corTextField
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var singUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("SingUp", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 18)
        button.setTitleColor(UIColor.corTwo, for: .normal)
        button.backgroundColor = UIColor.corOne
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
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
        addSubview(titleLabel)
        addSubview(backButton)
        addSubview(contentView)
        addSubview(nameLabel)
        addSubview(nameTextField)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(confirmPasswordLabel)
        addSubview(confirmPasswordTextField)
        addSubview(singUpButton)
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
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor,constant: 12),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor,constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 12),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor,constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            confirmPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 12),
            confirmPasswordLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            confirmPasswordTextField.topAnchor.constraint(equalTo: confirmPasswordLabel.bottomAnchor,constant: 10),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            singUpButton.bottomAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor,constant: 100),
            singUpButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            singUpButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            singUpButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }
}
