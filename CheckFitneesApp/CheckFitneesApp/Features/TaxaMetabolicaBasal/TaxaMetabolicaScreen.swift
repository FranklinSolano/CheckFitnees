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
    
    var name = ""
    weak var delegate: TaxaMetabolicaScreenProtocol?
    public func delegate(delegate: TaxaMetabolicaScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corOne
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.tintColor = UIColor.corTwo
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    
    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "person.circle.fill")
        image.tintColor = UIColor.corTwo
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = TextLabelCustom(title: "" )
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .corTwo
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
}

//MARK: - ViewCode

extension TaxaMetabolicaScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView,backButton,imagePerson,nameLabel, homemButton,mulherButton,lineView,line2View,pesoLabel,pesoTextField,alturaLabel,alturaTextField,idadeLabel,idadeTextField,taxaMetabolicaLabel,resultButton]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 220),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            imagePerson.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 20),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 70),
            imagePerson.widthAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: imagePerson.centerXAnchor),
            
            
            homemButton.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 20),
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
