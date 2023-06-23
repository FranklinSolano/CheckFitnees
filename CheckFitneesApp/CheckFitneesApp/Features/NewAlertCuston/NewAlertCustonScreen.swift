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
    
    lazy var fichaLabel: UILabel = {
        let label = TextLabelCustom(title: "Dados do Aluno")
        label.textColor = .corTwo
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
    
    lazy var nameLabel: UILabel = {
        let label = TextLabelCustom(title: "Nome*")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Digite o nome do aluno",attributes: [NSAttributedString.Key.foregroundColor: UIColor.corTwo])
        tf.backgroundColor = UIColor.corOne
        tf.layer.shadowColor = UIColor.corTwo.cgColor
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var modalidadeLabel: UILabel = {
        let label = TextLabelCustom(title: "Modalidade*")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var modalidadeTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Digite a modalidade",attributes: [NSAttributedString.Key.foregroundColor: UIColor.corTwo])
        tf.backgroundColor = UIColor.corOne
        tf.layer.shadowColor = UIColor.corTwo.cgColor
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var alturaLabel: UILabel = {
        let label = TextLabelCustom(title: "Altura*")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var alturaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Digite sua Altura. Ex: 170",attributes: [NSAttributedString.Key.foregroundColor: UIColor.corTwo])
        tf.backgroundColor = UIColor.corOne
        tf.layer.shadowColor = UIColor.corTwo.cgColor
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var pesoLabel: UILabel = {
        let label = TextLabelCustom(title: "Peso*")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var pesoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Digite seu Peso. Ex: 70.0",attributes: [NSAttributedString.Key.foregroundColor: UIColor.corTwo])
        tf.backgroundColor = UIColor.corOne
        tf.layer.shadowColor = UIColor.corTwo.cgColor
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var idadeLabel: UILabel = {
        let label = TextLabelCustom(title: "Idade*")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var idadeTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Digite sua Idade. Ex: 21",attributes: [NSAttributedString.Key.foregroundColor: UIColor.corTwo])
        tf.backgroundColor = UIColor.corOne
        tf.layer.shadowColor = UIColor.corTwo.cgColor
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var homemLabel: UILabel = {
        let label = TextLabelCustom(title: "Homem")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var imageCheckBoxHomem: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "circle.fill")
        image.tintColor = .corTwo
        return image
    }()
    
    lazy var mulherLabel: UILabel = {
        let label = TextLabelCustom(title: "Mulher")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var imageCheckBoxMulher: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "circle")
        image.tintColor = .corTwo
        return image
    }()
    
    lazy var adicionarButton: UIButton = {
        let button = ButtonCustom(title: "Adicionar")
        button.backgroundColor = UIColor.corTwo
        button.setTitleColor(UIColor.corOne, for: .normal)
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
    
    public func configTextField(delegate: UITextFieldDelegate){
        nameTextField.delegate = delegate
        modalidadeTextField.delegate = delegate
        alturaTextField.delegate = delegate
        idadeTextField.delegate = delegate
        pesoTextField.delegate = delegate
    }
    
    public func configButtonOn(){
        let name = nameTextField.text ?? ""
        let modalidade = modalidadeTextField.text ?? ""
        let altura = alturaTextField.text ?? ""
        let idade = idadeTextField.text ?? ""
        let peso = pesoTextField.text ?? ""
        
        if !name.isEmpty && !modalidade.isEmpty && !idade.isEmpty && !altura.isEmpty && !peso.isEmpty {
            adicionarButton.setTitleColor(.corOne, for: .normal)
            adicionarButton.isEnabled = true
        } else {
            adicionarButton.setTitleColor(.lightGray, for: .normal)
            adicionarButton.isEnabled = false
        }
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
        let views: [UIView] = [contentViewAlert,backButton,fichaLabel,nameLabel,nameTextField,modalidadeLabel,modalidadeTextField,alturaLabel,alturaTextField,pesoLabel,pesoTextField,idadeLabel,idadeTextField,homemLabel,imageCheckBoxHomem,mulherLabel,imageCheckBoxMulher,adicionarButton]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentViewAlert.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 100),
            contentViewAlert.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentViewAlert.heightAnchor.constraint(equalToConstant: 380),
            contentViewAlert.widthAnchor.constraint(equalToConstant: 340),
            
            backButton.topAnchor.constraint(equalTo: contentViewAlert.topAnchor,constant: 20),
            backButton.trailingAnchor.constraint(equalTo: contentViewAlert.trailingAnchor,constant: -20),
            
            fichaLabel.centerYAnchor.constraint(equalTo: backButton.centerYAnchor),
            fichaLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: contentViewAlert.topAnchor,constant: 65),
            nameLabel.leadingAnchor.constraint(equalTo: contentViewAlert.leadingAnchor,constant: 15),
            
            nameTextField.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor,constant: 8),
            nameTextField.trailingAnchor.constraint(equalTo: contentViewAlert.trailingAnchor,constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 20),
            
            modalidadeLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor,constant: 20),
            modalidadeLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            modalidadeTextField.centerYAnchor.constraint(equalTo: modalidadeLabel.centerYAnchor),
            modalidadeTextField.leadingAnchor.constraint(equalTo: modalidadeLabel.trailingAnchor,constant: 8),
            modalidadeTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            modalidadeTextField.heightAnchor.constraint(equalToConstant: 20),
            
            alturaLabel.topAnchor.constraint(equalTo: modalidadeTextField.bottomAnchor,constant: 20),
            alturaLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            alturaTextField.centerYAnchor.constraint(equalTo: alturaLabel.centerYAnchor),
            alturaTextField.leadingAnchor.constraint(equalTo: alturaLabel.trailingAnchor,constant: 8),
            alturaTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            alturaTextField.heightAnchor.constraint(equalToConstant: 20),
            
            pesoLabel.topAnchor.constraint(equalTo: alturaTextField.bottomAnchor,constant: 20),
            pesoLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            pesoTextField.centerYAnchor.constraint(equalTo: pesoLabel.centerYAnchor),
            pesoTextField.leadingAnchor.constraint(equalTo: pesoLabel.trailingAnchor,constant: 8),
            pesoTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            pesoTextField.heightAnchor.constraint(equalToConstant: 20),
            
            idadeLabel.topAnchor.constraint(equalTo: pesoTextField.bottomAnchor,constant: 20),
            idadeLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            idadeTextField.centerYAnchor.constraint(equalTo: idadeLabel.centerYAnchor),
            idadeTextField.leadingAnchor.constraint(equalTo: idadeLabel.trailingAnchor,constant: 8),
            idadeTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            idadeTextField.heightAnchor.constraint(equalToConstant: 20),
            
            homemLabel.topAnchor.constraint(equalTo: idadeTextField.bottomAnchor,constant: 35),
            homemLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 80),
            
            imageCheckBoxHomem.centerYAnchor.constraint(equalTo: homemLabel.centerYAnchor),
            imageCheckBoxHomem.leadingAnchor.constraint(equalTo: homemLabel.trailingAnchor,constant: 8),
            imageCheckBoxHomem.heightAnchor.constraint(equalToConstant: 14.5),
            imageCheckBoxHomem.widthAnchor.constraint(equalToConstant: 14.5),
            
            mulherLabel.centerYAnchor.constraint(equalTo: homemLabel.centerYAnchor),
            mulherLabel.trailingAnchor.constraint(equalTo: contentViewAlert.trailingAnchor,constant: -70),
            
            imageCheckBoxMulher.centerYAnchor.constraint(equalTo: homemLabel.centerYAnchor),
            imageCheckBoxMulher.leadingAnchor.constraint(equalTo: mulherLabel.trailingAnchor,constant: 8),
            imageCheckBoxMulher.heightAnchor.constraint(equalToConstant: 14.5),
            imageCheckBoxMulher.widthAnchor.constraint(equalToConstant: 14.5),
            
            adicionarButton.centerXAnchor.constraint(equalTo: contentViewAlert.centerXAnchor),
            adicionarButton.bottomAnchor.constraint(equalTo: contentViewAlert.bottomAnchor,constant: -20),
            adicionarButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
