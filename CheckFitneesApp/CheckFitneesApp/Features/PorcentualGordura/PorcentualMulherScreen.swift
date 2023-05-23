//
//  PorcentualMulherScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol PorcentualMulherScreenProtocol: AnyObject{
    func actionBackButton()
    func actionHomemButton()
    func actionCalcular()
}

class PorcentualMulherScreen: UIView {
    
    weak var delegate: PorcentualMulherScreenProtocol?
    public func delegate(delegate:PorcentualMulherScreenProtocol){
        self.delegate = delegate
    }

        lazy var titleLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "CheckFitnees"
            label.textColor = UIColor.corTwo
            label.font = UIFont(name: "Chalkduster", size: 40)
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
        
        lazy var nameLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Aluno: Franklin Stilhano Solano"
            label.textColor = UIColor.corTwo
            label.font = UIFont(name: "Trebuchet MS", size: 20)
            return label
        }()
        
        lazy var modalidadeLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Modalidade: Academia"
            label.textColor = UIColor.corTwo
            label.font = UIFont(name: "Trebuchet MS", size: 20)
            return label
        }()
        
        lazy var homemButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Homem", for: .normal)
            button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 20)
            button.setTitleColor(UIColor.corTwo, for: .normal)
            button.addTarget(self, action: #selector(tappedCalculoHomemButton), for: .touchUpInside)
            return button
        }()
        
        lazy var mulherButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Mulher", for: .normal)
            button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 20)
            button.setTitleColor(UIColor.corTwo, for: .normal)
            
            let bottomBorder = CALayer()
            bottomBorder.frame = CGRect(x: 0, y: button.frame.height - 1, width: button.frame.width, height: 2)
            bottomBorder.backgroundColor = UIColor.corTwo.cgColor
            button.layer.addSublayer(bottomBorder)
            return button
        }()
        
        lazy var alturaLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Altura:"
            label.textColor = UIColor.corTwo
            label.font = UIFont(name: "Trebuchet MS", size: 20)
            return label
        }()
        
        lazy var alturaTextField: UITextField = {
            let tf = UITextField()
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.autocorrectionType = .no
            tf.borderStyle = .roundedRect
            tf.keyboardType = .default
            tf.placeholder = "Digite sua Altura"
            tf.clipsToBounds = true
            tf.layer.cornerRadius = 8
            tf.backgroundColor = UIColor.corTwo
            return tf
        }()
        
        lazy var cinturaLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Cintura:"
            label.textColor = UIColor.corTwo
            label.font = UIFont(name: "Trebuchet MS", size: 20)
            return label
        }()
        
        lazy var cinturaTextField: UITextField = {
            let tf = UITextField()
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.autocorrectionType = .no
            tf.borderStyle = .roundedRect
            tf.keyboardType = .default
            tf.placeholder = "Digite sua cintura"
            tf.clipsToBounds = true
            tf.layer.cornerRadius = 8
            tf.backgroundColor = UIColor.corTwo
            return tf
        }()
    
    lazy var quadrilLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quadril:"
        label.textColor = UIColor.corTwo
        label.font = UIFont(name: "Trebuchet MS", size: 20)
        return label
    }()
    
    lazy var quadrilTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite seu quadril"
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.backgroundColor = UIColor.corTwo
        return tf
    }()
        
        lazy var pescocoLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Pescoço:"
            label.textColor = UIColor.corTwo
            label.font = UIFont(name: "Trebuchet MS", size: 20)
            return label
        }()
        
        lazy var pescocoTextField: UITextField = {
            let tf = UITextField()
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.autocorrectionType = .no
            tf.borderStyle = .roundedRect
            tf.keyboardType = .default
            tf.placeholder = "Digite seu pescoço"
            tf.clipsToBounds = true
            tf.layer.cornerRadius = 8
            tf.backgroundColor = UIColor.corTwo
            return tf
        }()
        
        lazy var pesoLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Peso:"
            label.textColor = UIColor.corTwo
            label.font = UIFont(name: "Trebuchet MS", size: 20)
            return label
        }()
        
        lazy var pesoTextField: UITextField = {
            let tf = UITextField()
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.autocorrectionType = .no
            tf.borderStyle = .roundedRect
            tf.keyboardType = .default
            tf.placeholder = "Digite seu peso:"
            tf.clipsToBounds = true
            tf.layer.cornerRadius = 8
            tf.backgroundColor = UIColor.corTwo
            return tf
        }()
        
        lazy var resultButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Calcular", for: .normal)
            button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 20)
            button.setTitleColor(UIColor.corOne, for: .normal)
            button.backgroundColor = UIColor.corTwo
            button.clipsToBounds = true
            button.layer.cornerRadius = 12
            button.addTarget(self, action: #selector(tappedCalcularButton), for: .touchUpInside)
            return button
        }()
        
        lazy var bfGorduraLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "% de gordura (BF)"
            label.textColor = UIColor.corTwo
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
            tf.backgroundColor = UIColor.corTwo
            return tf
        }()
        
        lazy var massaMagraLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Massa magra (kg)"
            label.textColor = UIColor.corTwo
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
            tf.backgroundColor = UIColor.corTwo
            return tf
        }()
        
        lazy var massaGordaLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Massa gorda (kg)"
            label.textColor = UIColor.corTwo
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
            tf.backgroundColor = UIColor.corTwo
            return tf
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
        
        @objc private func tappedCalcularButton(){
            delegate?.actionBackButton()
        }
        
        @objc private func tappedCalculoHomemButton(){
            delegate?.actionHomemButton()
        }
    }

    //MARK: - ViewCode

    extension PorcentualMulherScreen: ViewCode {
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
            addSubview(quadrilLabel)
            addSubview(quadrilTextField)
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
                    
                    quadrilLabel.topAnchor.constraint(equalTo: cinturaLabel.bottomAnchor,constant: 17),
                   quadrilLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                    
                    quadrilTextField.topAnchor.constraint(equalTo: cinturaTextField.bottomAnchor,constant: 17),
                    quadrilTextField.leadingAnchor.constraint(equalTo: quadrilLabel.trailingAnchor,constant: 8),
                    quadrilTextField.trailingAnchor.constraint(equalTo: alturaTextField.trailingAnchor),
                    quadrilTextField.heightAnchor.constraint(equalToConstant: 25),
                    
                    pescocoLabel.topAnchor.constraint(equalTo: quadrilLabel.bottomAnchor,constant: 17),
                   pescocoLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                    
                    pescocoTextField.topAnchor.constraint(equalTo: quadrilTextField.bottomAnchor,constant: 17),
                    pescocoTextField.leadingAnchor.constraint(equalTo: pescocoLabel.trailingAnchor,constant: 8),
                    pescocoTextField.trailingAnchor.constraint(equalTo: alturaTextField.trailingAnchor),
                    pescocoTextField.heightAnchor.constraint(equalToConstant: 25),
                    
                    pesoLabel.topAnchor.constraint(equalTo: pescocoLabel.bottomAnchor,constant: 17),
                    pesoLabel.leadingAnchor.constraint(equalTo: alturaLabel.leadingAnchor),
                    
                    pesoTextField.topAnchor.constraint(equalTo: pescocoTextField.bottomAnchor,constant: 17),
                    pesoTextField.leadingAnchor.constraint(equalTo: pesoLabel.trailingAnchor,constant: 8),
                    pesoTextField.trailingAnchor.constraint(equalTo: alturaTextField.trailingAnchor),
                    pesoTextField.heightAnchor.constraint(equalToConstant: 25),
                    
                    resultButton.topAnchor.constraint(equalTo: pesoTextField.bottomAnchor,constant: 45),
                    resultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                    resultButton.widthAnchor.constraint(equalToConstant: 150),
                    
                    bfGorduraLabel.topAnchor.constraint(equalTo: resultButton.bottomAnchor,constant: 25),
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

