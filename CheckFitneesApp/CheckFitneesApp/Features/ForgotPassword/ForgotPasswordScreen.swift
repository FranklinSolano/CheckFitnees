//
//  ForgotPasswordScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/18/23.
//

import UIKit

protocol ForgotPasswordScreenProtocol: AnyObject {
    func actionBackButton()
    func actionEnterButton()
}

class ForgotPasswordScreen: UIView {
    
    weak var delegate: ForgotPasswordScreenProtocol?
    public func delegate(delegate: ForgotPasswordScreenProtocol){
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
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "imagePerson")
        return image
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Insira o seu email abaixo para receber um link para redefinir a senha"
        label.textColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
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
    
    lazy var enterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("To enter", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        button.setTitleColor(UIColor(red: 104/255, green: 84/255, blue: 84/255, alpha: 1), for: .normal)
        button.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(tappedEnterButton), for: .touchUpInside)
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
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc private func tappedEnterButton(){
        delegate?.actionEnterButton()
    }
}

//MARK: - ViewCode

extension ForgotPasswordScreen: ViewCode {
    func configElements() {
        addSubview(titleLabel)
        addSubview(backButton)
        addSubview(imagePerson)
        addSubview(descriptionLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(enterButton)
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            imagePerson.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 13),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 190),
            imagePerson.widthAnchor.constraint(equalToConstant: 280),
            
            descriptionLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            emailLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor,constant: 18),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor,constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            enterButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -30),
            enterButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            enterButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            enterButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
