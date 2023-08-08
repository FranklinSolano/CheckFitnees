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

final class ForgotPasswordScreen: UIView {
    
    weak var delegate: ForgotPasswordScreenProtocol?
    public func delegate(delegate: ForgotPasswordScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = TitleLabelCustom()
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.tintColor = UIColor.secondaryColor
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.secondaryColor
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
  
    lazy var descriptionLabel: UILabel = {
        let label = TextLabelCustom(title: "Informe o seu Email abaixo.")
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = TextLabelCustom(title: "Email:")
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Digite seu email:")
        textField.autocapitalizationType = .none
        return textField
    }()
    
    lazy var errorEmailLabel: UILabel = {
        let label = TextLabelCustom(title: "Email não cadastrado. Tente novamente!")
        label.textColor = .red
        label.isHidden = true
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var enterButton: UIButton = {
        let button = ButtonCustom(title: "Enviar")
        button.addTarget(self, action: #selector(tappedEnterButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor.primaryColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTextField(delegate: UITextFieldDelegate){
        emailTextField.delegate = delegate
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
        [titleLabel, backButton, contentView, descriptionLabel, emailLabel, emailTextField, errorEmailLabel ,enterButton].forEach({addSubview($0)})
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
            
            errorEmailLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 5),
            errorEmailLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            
            enterButton.bottomAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 100),
            enterButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            enterButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            enterButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}

