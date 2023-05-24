//
//  PorcentualGorduraScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol PorcentualHomemScreenProtocol: AnyObject {
    func actionBackButton()
    func actionCalcular()
    func actionCalculoMulher()
}

class PorcentualHomemScreen: UIView {
    
    weak var delegate: PorcentualHomemScreenProtocol?
    public func delegate(delegate: PorcentualHomemScreenProtocol){
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
    
    lazy var homemButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Homem", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 20)
        button.setTitleColor(UIColor.corOne, for: .normal)
        
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x: 0, y: button.frame.height - 1, width: button.frame.width, height: 2)
        bottomBorder.backgroundColor = UIColor.corOne.cgColor
        button.layer.addSublayer(bottomBorder)
        
        return button
    }()
    
    lazy var mulherButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Mulher", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 20)
        button.setTitleColor(UIColor.corOne , for: .normal)
        button.addTarget(self, action: #selector(tappedCalculoMulherButton), for: .touchUpInside)
        return button
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
        tf.placeholder = "Ex: 170"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var cinturaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cintura:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var cinturaTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .numberPad
        tf.placeholder = "Ex: 75"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var pescocoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pescoço:"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var pescocoTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .numberPad
        tf.placeholder = "Ex: 35"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTextField
        return tf
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
        tf.placeholder = "Ex: 70"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTextField
        return tf
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
    
    lazy var bfGorduraLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "% de gordura (BF)"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var bfGorduraTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.textAlignment = .center
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var massaMagraLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Massa magra (kg)"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var massaMagraTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.textAlignment = .center
        tf.backgroundColor = UIColor.corTextField
        return tf
    }()
    
    lazy var massaGordaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Massa gorda (kg)"
        label.textColor = UIColor.corOne
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var massaGordaTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.textAlignment = .center
        tf.backgroundColor = UIColor.corTextField
        return tf
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
        delegate?.actionCalcular()
    }
    
    @objc private func tappedCalculoMulherButton(){
        delegate?.actionCalculoMulher()
    }
}

//MARK: - ViewCode

extension PorcentualHomemScreen: ViewCode {
    func configElements() {
        addSubview(titleLabel)
        addSubview(backButton)
        addSubview(nameLabel)
        addSubview(modalidadeLabel)
        addSubview(homemButton)
        addSubview(mulherButton)
        addSubview(alturaLabel)
        addSubview(alturaTextField)
        addSubview(cinturaLabel)
        addSubview(cinturaTextField)
        addSubview(pescocoLabel)
        addSubview(pescocoTextField)
        addSubview(pesoLabel)
        addSubview(pesoTextField)
        addSubview(resultButton)
        addSubview(bfGorduraLabel)
        addSubview(bfGorduraTextField)
        addSubview(massaMagraLabel)
        addSubview(massaMagraTextField)
        addSubview(massaGordaLabel)
        addSubview(massaGordaTextField)
    }
    
    func configConstraint() {
            NSLayoutConstraint.activate([
                
                titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
                
                backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                
                nameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 30),
                nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                
                modalidadeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
                modalidadeLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                
                homemButton.topAnchor.constraint(equalTo: modalidadeLabel.bottomAnchor,constant: 20),
                homemButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 100),
                homemButton.widthAnchor.constraint(equalToConstant: 100),
                
                
                mulherButton.topAnchor.constraint(equalTo: homemButton.topAnchor),
                mulherButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -100),
                mulherButton.widthAnchor.constraint(equalToConstant: 100),
                
                alturaLabel.topAnchor.constraint(equalTo: homemButton.bottomAnchor,constant: 30),
                alturaLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                
                alturaTextField.topAnchor.constraint(equalTo: homemButton.bottomAnchor,constant: 30),
                alturaTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                alturaTextField.leadingAnchor.constraint(equalTo: alturaLabel.trailingAnchor,constant: 8),
                alturaTextField.heightAnchor.constraint(equalToConstant: 25),
                
                cinturaLabel.topAnchor.constraint(equalTo: alturaTextField.bottomAnchor,constant: 17),
                cinturaLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                
                cinturaTextField.topAnchor.constraint(equalTo: alturaTextField.bottomAnchor,constant: 17),
                cinturaTextField.leadingAnchor.constraint(equalTo: cinturaLabel.trailingAnchor,constant: 8),
                cinturaTextField.trailingAnchor.constraint(equalTo: alturaTextField.trailingAnchor),
                cinturaTextField.heightAnchor.constraint(equalToConstant: 25),
                
                pescocoLabel.topAnchor.constraint(equalTo: cinturaLabel.bottomAnchor,constant: 17),
               pescocoLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                
                pescocoTextField.topAnchor.constraint(equalTo: cinturaTextField.bottomAnchor,constant: 17),
                pescocoTextField.leadingAnchor.constraint(equalTo: pescocoLabel.trailingAnchor,constant: 8),
                pescocoTextField.trailingAnchor.constraint(equalTo: alturaTextField.trailingAnchor),
                pescocoTextField.heightAnchor.constraint(equalToConstant: 25),
                
                pesoLabel.topAnchor.constraint(equalTo: pescocoLabel.bottomAnchor,constant: 17),
                pesoLabel.leadingAnchor.constraint(equalTo: alturaLabel.leadingAnchor),
                
                pesoTextField.topAnchor.constraint(equalTo: pescocoTextField.bottomAnchor,constant: 17),
                pesoTextField.leadingAnchor.constraint(equalTo: pesoLabel.trailingAnchor,constant: 8),
                pesoTextField.trailingAnchor.constraint(equalTo: alturaTextField.trailingAnchor),
                pesoTextField.heightAnchor.constraint(equalToConstant: 25),
                
                resultButton.topAnchor.constraint(equalTo: pesoTextField.bottomAnchor,constant: 35),
                resultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                resultButton.widthAnchor.constraint(equalToConstant: 150),
                
                bfGorduraLabel.topAnchor.constraint(equalTo: resultButton.bottomAnchor,constant: 40),
                bfGorduraLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
                
                bfGorduraTextField.topAnchor.constraint(equalTo: bfGorduraLabel.bottomAnchor,constant: 10),
                bfGorduraTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                bfGorduraTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
                
                massaMagraLabel.topAnchor.constraint(equalTo: bfGorduraTextField.bottomAnchor,constant: 15),
                massaMagraLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
                
                massaMagraTextField.topAnchor.constraint(equalTo: massaMagraLabel.bottomAnchor,constant: 10),
                massaMagraTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                massaMagraTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
                
                massaGordaLabel.topAnchor.constraint(equalTo: massaMagraTextField.bottomAnchor,constant: 15),
                massaGordaLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
                
                massaGordaTextField.topAnchor.constraint(equalTo: massaGordaLabel.bottomAnchor,constant: 10),
                massaGordaTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                massaGordaTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20)
            ])
    }
}
