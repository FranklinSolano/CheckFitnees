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
  
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Insira o seu email abaixo para receber um link para redefinir a senha"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
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
    
    lazy var enterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("To enter", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 16)
        button.setTitleColor(UIColor.corTwo, for: .normal)
        button.backgroundColor = UIColor.corOne
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(tappedEnterButton), for: .touchUpInside)
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
    
    @objc private func tappedEnterButton(){
        delegate?.actionEnterButton()
    }
}

//MARK: - ViewCode

extension ForgotPasswordScreen: ViewCode {
    func configElements() {
        addSubview(titleLabel)
        addSubview(backButton)
        addSubview(contentView)
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
            
            contentView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 40),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 30),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            emailLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor,constant: 18),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 18),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor,constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            enterButton.bottomAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 100),
            enterButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            enterButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            enterButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
