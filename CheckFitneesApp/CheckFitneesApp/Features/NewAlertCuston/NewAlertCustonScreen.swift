//
//  NewAlertCustonScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol NewAlertCustonScreenProtocol: AnyObject {
    func actionBackButton()
    func actionAdicionarButton()
}

class NewAlertCustonScreen: UIView {
    
    weak var delegate: NewAlertCustonScreenProtocol?
    public func delegate(delegate: NewAlertCustonScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var contentViewAlert: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corOne
        view.clipsToBounds = true
        view.layer.cornerRadius = 27
        return view
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "multiply.circle.fill"), for: .normal)
        button.tintColor = UIColor.corTwo
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nome:"
        label.textColor = UIColor.corTwo
        label.font = UIFont(name: "Trebuchet MS", size: 16)
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite seu nome"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 7
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var modalidadeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Modalidade:"
        label.textColor = UIColor.corTwo
        label.font = UIFont(name: "Trebuchet MS", size: 16)
        return label
    }()
    
    lazy var modalidadeTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite sua modalidade:"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 7
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var adicionarButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Adicionar", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 16)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.backgroundColor = UIColor.corTwo
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedAdicionarButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor.corTwo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc private func tappedAdicionarButton(){
        delegate?.actionAdicionarButton()
    }
    
}

//MARK: - ViewCode

extension NewAlertCustonScreen: ViewCode {
    func configElements() {
        addSubview(contentViewAlert)
        contentViewAlert.addSubview(backButton)
        contentViewAlert.addSubview(nameLabel)
        contentViewAlert.addSubview(nameTextField)
        contentViewAlert.addSubview(modalidadeLabel)
        contentViewAlert.addSubview(modalidadeTextField)
        contentViewAlert.addSubview(adicionarButton)
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentViewAlert.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 100),
            contentViewAlert.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentViewAlert.heightAnchor.constraint(equalToConstant: 195),
            contentViewAlert.widthAnchor.constraint(equalToConstant: 340),
            
            backButton.topAnchor.constraint(equalTo: contentViewAlert.topAnchor,constant: 10),
            backButton.trailingAnchor.constraint(equalTo: contentViewAlert.trailingAnchor,constant: -20),
            
            nameLabel.topAnchor.constraint(equalTo: contentViewAlert.topAnchor,constant: 50),
            nameLabel.leadingAnchor.constraint(equalTo: contentViewAlert.leadingAnchor,constant: 15),
            
            nameTextField.topAnchor.constraint(equalTo: contentViewAlert.topAnchor,constant: 50),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor,constant: 8),
            nameTextField.trailingAnchor.constraint(equalTo: contentViewAlert.trailingAnchor,constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 20),
            
            modalidadeLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor,constant: 20),
            modalidadeLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            modalidadeTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor,constant: 20),
            modalidadeTextField.leadingAnchor.constraint(equalTo: modalidadeLabel.trailingAnchor,constant: 8),
            modalidadeTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            modalidadeTextField.heightAnchor.constraint(equalToConstant: 20),
            
            adicionarButton.centerXAnchor.constraint(equalTo: contentViewAlert.centerXAnchor),
            adicionarButton.topAnchor.constraint(equalTo: modalidadeTextField.bottomAnchor,constant: 20),
            adicionarButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
