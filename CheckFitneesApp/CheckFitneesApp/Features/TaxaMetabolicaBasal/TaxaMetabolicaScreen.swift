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
    func actionCalculoMulher()
    func actionCalculoHomem()
    
}

class TaxaMetabolicaScreen: UIView {
    
    var result = 0.0
    
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
    
    lazy var homemButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Homem", for: .normal)
        button.titleLabel?.font = UIFont(name: "PingFang SC", size: 20)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.addTarget(self, action: #selector(tappedCalculoHomemButton), for: .touchUpInside)
        return button
    }()
    
    lazy var mulherButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Mulher", for: .normal)
        button.titleLabel?.font = UIFont(name: "PingFang SC", size: 20)
        button.setTitleColor(UIColor.corOne , for: .normal)
        button.addTarget(self, action: #selector(tappedCalculoMulherButton), for: .touchUpInside)
        return button
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corOne
        return view
    }()
    
    lazy var line2View: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var pesoLabel: UILabel = {
        let label = TextLabelCustom(title: "Peso:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var pesoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 70")
        return tf
    }()
    
    lazy var alturaLabel: UILabel = {
        let label = TextLabelCustom(title: "Altura:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var alturaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 170")
        return tf
    }()
    
    lazy var idadeLabel: UILabel = {
        let label = TextLabelCustom(title: "Idade:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var idadeTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 21")
        return tf
    }()
    
    lazy var taxaMetabolicaLabel: UILabel = {
        let label = TextLabelCustom(title: "")
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
    }
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc private func tappedCalcularButton(){
        delegate?.actionCalcularButton()
    }
    
    @objc private func tappedCalculoMulherButton(){
        delegate?.actionCalculoMulher()
    }
    
    @objc private func tappedCalculoHomemButton(){
        delegate?.actionCalculoHomem()
    }
    
    func calculoTaxa(){
        let pesoString = pesoTextField.text
        let pesoDouble = 0.0
        let pesoResult = Double(pesoString ?? "") ?? pesoDouble
        
        let idadeString = idadeTextField.text
        let idadeDouble = 0.0
        let idadeResult = Double(idadeString ?? "") ?? idadeDouble
        
        let alturaString = alturaTextField.text
        let alturaDouble = 0.0
        let alturaResult = Double(alturaString ?? "") ?? alturaDouble
        
        let calculoPeso = 13.7 * pesoResult
        let calculoAltura = 5.0 * alturaResult
        let calculoIdade = 6.7 * idadeResult
        
        let calculoPesoMulher = 9.6 * pesoResult
        let calculoAlturaMulher = 1.8 * alturaResult
        let calculoIdadeMulher = 4.7 * idadeResult
        
        if lineView.backgroundColor == .corOne {
            var calculoSoma =  66 + (calculoPeso) + (calculoAltura) - (calculoIdade)
            result = calculoSoma
        } else {
            var calculoSoma =  665 + (calculoPesoMulher) + (calculoAlturaMulher) - (calculoIdadeMulher)
            result = calculoSoma
        }
        taxaMetabolicaLabel.text = "Sua Taxa Metabólica Basal é \(result) Kcal"
        pesoTextField.text = ""
        alturaTextField.text = ""
        idadeTextField.text = ""
    }
}

//MARK: - ViewCode

extension TaxaMetabolicaScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [titleLabel, backButton,nameLabel,modalidadeLabel, homemButton,mulherButton,lineView,line2View,pesoLabel,pesoTextField,alturaLabel,alturaTextField,idadeLabel,idadeTextField,taxaMetabolicaLabel,resultButton]
        for view in views {
            addSubview(view)
        }
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
            
            homemButton.topAnchor.constraint(equalTo: modalidadeLabel.bottomAnchor,constant: 20),
            homemButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 100),
            homemButton.widthAnchor.constraint(equalToConstant: 100),
            
            mulherButton.topAnchor.constraint(equalTo: homemButton.topAnchor),
            mulherButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -100),
            mulherButton.widthAnchor.constraint(equalToConstant: 100),
            
            lineView.topAnchor.constraint(equalTo: homemButton.bottomAnchor),
            lineView.widthAnchor.constraint(equalToConstant: 100),
            lineView.heightAnchor.constraint(equalToConstant: 2),
            lineView.leadingAnchor.constraint(equalTo: homemButton.leadingAnchor),
            
            line2View.topAnchor.constraint(equalTo: mulherButton.bottomAnchor),
            line2View.widthAnchor.constraint(equalToConstant: 100),
            line2View.heightAnchor.constraint(equalToConstant: 2),
            line2View.trailingAnchor.constraint(equalTo: mulherButton.trailingAnchor),
            
            pesoLabel.topAnchor.constraint(equalTo: homemButton.bottomAnchor,constant: 40),
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
            
            resultButton.topAnchor.constraint(equalTo: idadeTextField.bottomAnchor,constant: 45),
            resultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resultButton.widthAnchor.constraint(equalToConstant: 150),
            
            taxaMetabolicaLabel.topAnchor.constraint(equalTo: resultButton.bottomAnchor,constant: 30),
            taxaMetabolicaLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            taxaMetabolicaLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30)
        ])
    }
}
