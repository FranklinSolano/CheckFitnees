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
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CheckFitness"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Chalkduster", size: 30)
        label.textAlignment = .center
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
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Aluno: Franklin Stilhano Solano"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var modalidadeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Modalidade: Academia"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var pesoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Peso:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var pesoTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .numberPad
        tf.placeholder = "Digite seu peso em cm"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var alturaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Altura:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var alturaTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .numberPad
        tf.placeholder = "Digite sua altura em cm"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var idadeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Idade:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var idadeTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .numberPad
        tf.placeholder = "Digite sua idade"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var sexoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sexo:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var sexoTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite seu sexo:"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var biotipoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Biotipo:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var biotipoTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite seu biotipo"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var taxaMetabolicaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sua Taxa Metabólica Basal é 2700 kcal"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 25)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var resultButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Calcular", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.setTitleColor(UIColor.corTwo, for: .normal)
        button.backgroundColor = UIColor.corOne
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
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
            
            pesoTextField.topAnchor.constraint(equalTo: pesoLabel.topAnchor),
            pesoTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            pesoTextField.leadingAnchor.constraint(equalTo: pesoLabel.trailingAnchor,constant: 8),
            pesoTextField.heightAnchor.constraint(equalToConstant: 25),
            
            
            alturaLabel.topAnchor.constraint(equalTo: pesoLabel.bottomAnchor,constant: 25),
            alturaLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            alturaTextField.topAnchor.constraint(equalTo: pesoTextField.bottomAnchor,constant: 25),
            alturaTextField.leadingAnchor.constraint(equalTo: alturaLabel.trailingAnchor,constant: 8),
            alturaTextField.heightAnchor.constraint(equalToConstant: 25),
            alturaTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            idadeLabel.topAnchor.constraint(equalTo: alturaLabel.bottomAnchor,constant: 25),
            idadeLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            idadeTextField.topAnchor.constraint(equalTo: alturaTextField.bottomAnchor,constant: 25),
            idadeTextField.leadingAnchor.constraint(equalTo: idadeLabel.trailingAnchor,constant: 8),
            idadeTextField.heightAnchor.constraint(equalToConstant: 25),
            idadeTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            sexoLabel.topAnchor.constraint(equalTo: idadeLabel.bottomAnchor,constant: 25),
            sexoLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            sexoTextField.topAnchor.constraint(equalTo: idadeTextField.bottomAnchor,constant: 25),
            sexoTextField.leadingAnchor.constraint(equalTo: sexoLabel.trailingAnchor,constant: 8),
            sexoTextField.heightAnchor.constraint(equalToConstant: 25),
            sexoTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            biotipoLabel.topAnchor.constraint(equalTo: sexoLabel.bottomAnchor,constant: 25),
            biotipoLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            biotipoTextField.topAnchor.constraint(equalTo: sexoTextField.bottomAnchor,constant: 23),
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
