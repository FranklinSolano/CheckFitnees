//
//  TaxaMetabolicaScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol TaxaMetabolicaScreenProtocol: AnyObject {
    func actionBackButton()
    func actionCalcularButton()
}

class TaxaMetabolicaScreen: UIView {
    
    weak var delegate: TaxaMetabolicaScreenProtocol?
    public func delegate(delegate: TaxaMetabolicaScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = TitleLabelCustom()
        return label
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.tintColor = UIColor.corOne
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var nameLabel: UILabel = {
        let label = TextLabelCustom(title: "Aluno: Franklin Solano")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var modalidadeLabel: UILabel = {
        let label = TextLabelCustom(title: "Modalidade Academia")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var pesoLabel: UILabel = {
        let label = TextLabelCustom(title: "Peso:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var pesoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite seu peso:")
        return tf
    }()
    
    lazy var alturaLabel: UILabel = {
        let label = TextLabelCustom(title: "Altura:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var alturaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite sua altura:")
        return tf
    }()
    
    lazy var idadeLabel: UILabel = {
        let label = TextLabelCustom(title: "Idade:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var idadeTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite sua idade:")
        return tf
    }()
    
    lazy var sexoLabel: UILabel = {
        let label = TextLabelCustom(title: "Sexo:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var sexoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite seu sexo")
        return tf
    }()
    
    lazy var biotipoLabel: UILabel = {
        let label = TextLabelCustom(title: "Biotipo:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label    }()
    
    lazy var biotipoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Digite seu biotipo:")
        return tf
    }()
    
    lazy var taxaMetabolicaLabel: UILabel = {
        let label = TextLabelCustom(title: "Sua Taxa Metabólica Basal é 2700 Kcal")
        label.font = UIFont.systemFont(ofSize: 25)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var resultButton: UIButton = {
        let button = ButtonCustom(title: "Calcular")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.addTarget(self, action: #selector(tappedCalcularButton), for: .touchUpInside)
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
    
    public func configTextField(delegate: UITextFieldDelegate) {
        pesoTextField.delegate = delegate
        alturaTextField.delegate = delegate
        idadeTextField.delegate = delegate
        sexoTextField.delegate = delegate
        biotipoTextField.delegate = delegate
    }
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc private func tappedCalcularButton(){
        delegate?.actionCalcularButton()
    }
}

//MARK: - ViewCode

extension TaxaMetabolicaScreen: ViewCode {
    func configElements() {
        addSubview(titleLabel)
        addSubview(backButton)
        addSubview(nameLabel)
        addSubview(modalidadeLabel)
        addSubview(pesoLabel)
        addSubview(pesoTextField)
        addSubview(alturaLabel)
        addSubview(alturaTextField)
        addSubview(idadeLabel)
        addSubview(idadeTextField)
        addSubview(sexoLabel)
        addSubview(sexoTextField)
        addSubview(biotipoLabel)
        addSubview(biotipoTextField)
        addSubview(taxaMetabolicaLabel)
        addSubview(resultButton)
        
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            nameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 50),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            
            modalidadeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            modalidadeLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            
            pesoLabel.topAnchor.constraint(equalTo: modalidadeLabel.bottomAnchor,constant: 60),
            pesoLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            pesoTextField.centerYAnchor.constraint(equalTo: pesoLabel.centerYAnchor),
            pesoTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            pesoTextField.leadingAnchor.constraint(equalTo: pesoLabel.trailingAnchor,constant: 8),
            pesoTextField.heightAnchor.constraint(equalToConstant: 25),
            
            
            alturaLabel.topAnchor.constraint(equalTo: pesoLabel.bottomAnchor,constant: 25),
            alturaLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            alturaTextField.centerYAnchor.constraint(equalTo: alturaLabel.centerYAnchor),
            alturaTextField.leadingAnchor.constraint(equalTo: alturaLabel.trailingAnchor,constant: 8),
            alturaTextField.heightAnchor.constraint(equalToConstant: 25),
            alturaTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            idadeLabel.topAnchor.constraint(equalTo: alturaLabel.bottomAnchor,constant: 25),
            idadeLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            idadeTextField.centerYAnchor.constraint(equalTo: idadeLabel.centerYAnchor),
            idadeTextField.leadingAnchor.constraint(equalTo: idadeLabel.trailingAnchor,constant: 8),
            idadeTextField.heightAnchor.constraint(equalToConstant: 25),
            idadeTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            sexoLabel.topAnchor.constraint(equalTo: idadeLabel.bottomAnchor,constant: 25),
            sexoLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            sexoTextField.centerYAnchor.constraint(equalTo: sexoLabel.centerYAnchor),
            sexoTextField.leadingAnchor.constraint(equalTo: sexoLabel.trailingAnchor,constant: 8),
            sexoTextField.heightAnchor.constraint(equalToConstant: 25),
            sexoTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            biotipoLabel.topAnchor.constraint(equalTo: sexoLabel.bottomAnchor,constant: 25),
            biotipoLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            biotipoTextField.centerYAnchor.constraint(equalTo: biotipoLabel.centerYAnchor),
            biotipoTextField.leadingAnchor.constraint(equalTo: biotipoLabel.trailingAnchor,constant: 8),
            biotipoTextField.heightAnchor.constraint(equalToConstant: 25),
            biotipoTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            resultButton.topAnchor.constraint(equalTo: biotipoTextField.bottomAnchor,constant: 45),
            resultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resultButton.widthAnchor.constraint(equalToConstant: 150),
            
            taxaMetabolicaLabel.topAnchor.constraint(equalTo: resultButton.bottomAnchor,constant: 30),
            taxaMetabolicaLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            taxaMetabolicaLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30)
        ])
    }
}
