//
//  CalculadorasScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol CalculadorasScreenProtocol: AnyObject {
    func actionBackButton()
    func actionTaxaMetabolicaButton()
    func actionPorcentualGorduraButton()
    func actionCicloCarboidratosButton()
    func actionDietaFlexivelButton()
    func actionDietaAvancadaButton()
    func actionVolumeTreinoButton()
}

class CalculadorasScreen: UIView {
    
    weak var delegate: CalculadorasScreenProtocol?
    public func delegate(delegate:CalculadorasScreenProtocol){
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
    
    lazy var TaxaMetabolicaBasalButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Taxa Metabólica Basal", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 25)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.backgroundColor = UIColor.corTwo
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(tappedTaxaMetabolicaButton), for: .touchUpInside)
        return button
    }()
    
    lazy var porcentualGorduraButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Porcentual de Gordura", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 25)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.backgroundColor = UIColor.corTwo
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(tappedPorcentualGorduraButton), for: .touchUpInside)
        return button
    }()
    
    lazy var cicloDeCarboitradosButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Ciclo de Carboidratos", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 25)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.backgroundColor = UIColor.corTwo
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(tappedCicloCarboidratosButton), for: .touchUpInside)
        return button
    }()
    
    lazy var dietaFlexivelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Dieta Flexivel Facil", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 25)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.backgroundColor = UIColor.corTwo
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(tappedDietaFlexivelButton), for: .touchUpInside)
        return button
    }()
    
    lazy var dietaAvancadaButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Dieta Avançada", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 25)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.backgroundColor = UIColor.corTwo
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(tappedDietaAvancadaButton), for: .touchUpInside)
        return button
    }()
    
    lazy var volumeTreinolButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Volume de Treino", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 25)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.backgroundColor = UIColor.corTwo
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(tappedVolumeTreinoButton), for: .touchUpInside)
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
    
    @objc private func tappedTaxaMetabolicaButton(){
        delegate?.actionTaxaMetabolicaButton()
    }
    
    @objc private func tappedPorcentualGorduraButton(){
        delegate?.actionPorcentualGorduraButton()
    }
    
    @objc private func tappedCicloCarboidratosButton(){
        delegate?.actionCicloCarboidratosButton()
    }
    
    @objc private func tappedDietaFlexivelButton(){
        delegate?.actionDietaFlexivelButton()
    }
    
    @objc private func tappedDietaAvancadaButton(){
        delegate?.actionDietaAvancadaButton()
    }
    
    @objc private func tappedVolumeTreinoButton(){
        delegate?.actionVolumeTreinoButton()
    }
}

//MARK: -

extension CalculadorasScreen: ViewCode {
    func configElements() {
        addSubview(titleLabel)
        addSubview(backButton)
        addSubview(nameLabel)
        addSubview(modalidadeLabel)
        addSubview(TaxaMetabolicaBasalButton)
        addSubview(porcentualGorduraButton)
        addSubview(cicloDeCarboitradosButton)
        addSubview(dietaFlexivelButton)
        addSubview(dietaAvancadaButton)
        addSubview(volumeTreinolButton)
        
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
                
                TaxaMetabolicaBasalButton.topAnchor.constraint(equalTo: modalidadeLabel.bottomAnchor,constant: 70),
                TaxaMetabolicaBasalButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                TaxaMetabolicaBasalButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                TaxaMetabolicaBasalButton.heightAnchor.constraint(equalToConstant: 50),
                
                porcentualGorduraButton.topAnchor.constraint(equalTo: TaxaMetabolicaBasalButton.bottomAnchor,constant: 20),
                porcentualGorduraButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                porcentualGorduraButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                porcentualGorduraButton.heightAnchor.constraint(equalToConstant: 50),
                
                cicloDeCarboitradosButton.topAnchor.constraint(equalTo: porcentualGorduraButton.bottomAnchor,constant: 20),
                cicloDeCarboitradosButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                cicloDeCarboitradosButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                cicloDeCarboitradosButton.heightAnchor.constraint(equalToConstant: 50),
                
                dietaFlexivelButton.topAnchor.constraint(equalTo: cicloDeCarboitradosButton.bottomAnchor,constant: 20),
                dietaFlexivelButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                dietaFlexivelButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                dietaFlexivelButton.heightAnchor.constraint(equalToConstant: 50),
                
                dietaAvancadaButton.topAnchor.constraint(equalTo: dietaFlexivelButton.bottomAnchor,constant: 20),
                dietaAvancadaButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                dietaAvancadaButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                dietaAvancadaButton.heightAnchor.constraint(equalToConstant: 50),
                
                volumeTreinolButton.topAnchor.constraint(equalTo: dietaAvancadaButton.bottomAnchor,constant: 20),
                volumeTreinolButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                volumeTreinolButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                volumeTreinolButton.heightAnchor.constraint(equalToConstant: 50),
            ])
    }
}
