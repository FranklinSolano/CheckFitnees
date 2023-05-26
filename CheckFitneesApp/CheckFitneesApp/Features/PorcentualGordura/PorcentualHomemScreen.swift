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
    func actionCalculoHomem()
}

class PorcentualHomemScreen: UIView {
    
    weak var delegate: PorcentualHomemScreenProtocol?
    public func delegate(delegate: PorcentualHomemScreenProtocol){
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
    
    lazy var triciptalLabel: UILabel = {
        let label = TextLabelCustom(title: "Triciptal:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var triciptalTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 32")
        return tf
    }()
    
    lazy var peitoralLabel: UILabel = {
        let label = TextLabelCustom(title: "Peitoral:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var peitoralTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 80")
        return tf
    }()
    
    lazy var supraLabel: UILabel = {
        let label = TextLabelCustom(title: "Supra-ilíaca:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var supraTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 70")
        return tf
    }()
    
    lazy var abdominalLabel: UILabel = {
        let label = TextLabelCustom(title: "Abdominal:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var abdominalTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 75")
        return tf
    }()
    
    lazy var coxaLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var coxaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 65")
        return tf
    }()
    
    lazy var subescapularLabel: UILabel = {
        let label = TextLabelCustom(title: "Subescapular")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var subescapularTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 55")
        return tf
    }()
    
    lazy var axilarLabel: UILabel = {
        let label = TextLabelCustom(title: "Axiliar Média:")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var axilarTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 32")
        return tf
    }()
    
    lazy var resultButton: UIButton = {
        let button = ButtonCustom(title: "Calcular")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.addTarget(self, action: #selector(tappedCalcularButton), for: .touchUpInside)
        return button
    }()
    
    lazy var bfGorduraLabel: UILabel = {
        let label = TextLabelCustom(title: "% de Gordura")
        label.font = UIFont.systemFont(ofSize: 20)
        return label    }()
    
    lazy var bfGorduraTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 55")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var massaMagraLabel: UILabel = {
        let label = TextLabelCustom(title: "Massa Magra")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var massaMagraTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 55")
        tf.textAlignment = .center
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
    
    public func configTextField(delegate: UITextFieldDelegate) {
        triciptalTextField.delegate = delegate
        peitoralTextField.delegate = delegate
        supraTextField.delegate = delegate
        abdominalTextField.delegate = delegate
        coxaTextField.delegate = delegate
        subescapularTextField.delegate = delegate
        axilarTextField.delegate = delegate
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
    
    @objc private func tappedCalculoHomemButton(){
        delegate?.actionCalculoHomem()
    }
}

//MARK: - ViewCode

extension PorcentualHomemScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [titleLabel,backButton,nameLabel,modalidadeLabel,homemButton,mulherButton,lineView,line2View,triciptalLabel,triciptalTextField,peitoralLabel, peitoralTextField, supraLabel, supraTextField,abdominalLabel,abdominalTextField,coxaLabel,coxaTextField, subescapularLabel,subescapularTextField,axilarLabel,axilarTextField,resultButton,bfGorduraLabel,bfGorduraTextField,massaMagraLabel,massaMagraTextField]
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
            
            lineView.topAnchor.constraint(equalTo: homemButton.bottomAnchor),
            lineView.widthAnchor.constraint(equalToConstant: 100),
            lineView.heightAnchor.constraint(equalToConstant: 2),
            lineView.leadingAnchor.constraint(equalTo: homemButton.leadingAnchor),
            
            line2View.topAnchor.constraint(equalTo: mulherButton.bottomAnchor),
            line2View.widthAnchor.constraint(equalToConstant: 100),
            line2View.heightAnchor.constraint(equalToConstant: 2),
            line2View.trailingAnchor.constraint(equalTo: mulherButton.trailingAnchor),
            
            triciptalLabel.topAnchor.constraint(equalTo: homemButton.bottomAnchor,constant: 30),
            triciptalLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            triciptalTextField.centerYAnchor.constraint(equalTo: triciptalLabel.centerYAnchor),
            triciptalTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            triciptalTextField.leadingAnchor.constraint(equalTo: triciptalLabel.trailingAnchor,constant: 8),
            triciptalTextField.heightAnchor.constraint(equalToConstant: 25),
            
            peitoralLabel.topAnchor.constraint(equalTo: triciptalTextField.bottomAnchor,constant: 17),
            peitoralLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            peitoralTextField.centerYAnchor.constraint(equalTo: peitoralLabel.centerYAnchor),
            peitoralTextField.leadingAnchor.constraint(equalTo: peitoralLabel.trailingAnchor,constant: 8),
            peitoralTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            peitoralTextField.heightAnchor.constraint(equalToConstant: 25),
            
            supraLabel.topAnchor.constraint(equalTo: peitoralLabel.bottomAnchor,constant: 17),
            supraLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            supraTextField.centerYAnchor.constraint(equalTo: supraLabel.centerYAnchor),
            supraTextField.leadingAnchor.constraint(equalTo: supraLabel.trailingAnchor,constant: 8),
            supraTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            supraTextField.heightAnchor.constraint(equalToConstant: 25),
            
            abdominalLabel.topAnchor.constraint(equalTo: supraLabel.bottomAnchor,constant: 17),
            abdominalLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            abdominalTextField.centerYAnchor.constraint(equalTo: abdominalLabel.centerYAnchor),
            abdominalTextField.leadingAnchor.constraint(equalTo: abdominalLabel.trailingAnchor,constant: 8),
            abdominalTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            abdominalTextField.heightAnchor.constraint(equalToConstant: 25),
            
            coxaLabel.topAnchor.constraint(equalTo: abdominalTextField.bottomAnchor,constant: 17),
            coxaLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            coxaTextField.centerYAnchor.constraint(equalTo: coxaLabel.centerYAnchor),
            coxaTextField.leadingAnchor.constraint(equalTo: coxaLabel.trailingAnchor,constant: 8),
            coxaTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            coxaTextField.heightAnchor.constraint(equalToConstant: 25),
            
            subescapularLabel.topAnchor.constraint(equalTo: coxaTextField.bottomAnchor,constant: 17),
            subescapularLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            subescapularTextField.centerYAnchor.constraint(equalTo: subescapularLabel.centerYAnchor),
            subescapularTextField.leadingAnchor.constraint(equalTo: subescapularLabel.trailingAnchor,constant: 8),
            subescapularTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            subescapularTextField.heightAnchor.constraint(equalToConstant: 25),
            
            axilarLabel.topAnchor.constraint(equalTo: subescapularLabel.bottomAnchor,constant: 17),
            axilarLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            axilarTextField.centerYAnchor.constraint(equalTo: axilarLabel.centerYAnchor),
            axilarTextField.leadingAnchor.constraint(equalTo: axilarLabel.trailingAnchor,constant: 8),
            axilarTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            axilarTextField.heightAnchor.constraint(equalToConstant: 25),
            
            resultButton.topAnchor.constraint(equalTo: axilarLabel.bottomAnchor,constant: 40),
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
            massaMagraTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20)
        ])
    }
}
