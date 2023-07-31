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
        button.setTitle("voltar", for: .normal)
        button.setTitleColor(.corTwo, for: .normal)
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
        label.textColor = .corTwo
        return label
    }()
    
    lazy var taxaMetabolicaLabel: UILabel = {
        let label = TextLabelCustom(title: "Taxa Metabolica Basal" )
        label.font = UIFont(name: "Roboto-Bold", size: 24)
        label.textColor = .white
        return label
    }()
    
    lazy var contentView2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corOne
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var pesoLabel: UILabel = {
        let label = TextLabelCustom(title: "• Peso:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var pesoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = "68.8"
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textAlignment = .center
        tf.backgroundColor = .corOne
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var alturaLabel: UILabel = {
        let label = TextLabelCustom(title: "• Altura:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var alturaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = "164"
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textAlignment = .center
        tf.backgroundColor = .corOne
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var idadeLabel: UILabel = {
        let label = TextLabelCustom(title: "• Idade:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var idadeTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = "22"
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textAlignment = .center
        tf.backgroundColor = .corOne
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var resultTaxaMetabolicaLabel: UILabel = {
        let label = TextLabelCustom(title: "Taxa Metabólica Basal 0.0 Kcal")
        label.font = UIFont(name: "Roboto-Regular", size: 18)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .corTwo
        return label
    }()
    
    lazy var resultButton: UIButton = {
        let button = ButtonCustom(title: "CALCULAR")
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
}

//MARK: - ViewCode

extension TaxaMetabolicaScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView,backButton,imagePerson,nameLabel,taxaMetabolicaLabel,contentView2,pesoLabel,pesoTextField,alturaLabel,alturaTextField,idadeLabel,idadeTextField,resultTaxaMetabolicaLabel,resultButton]
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
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            
            imagePerson.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 20),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 70),
            imagePerson.widthAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: imagePerson.centerXAnchor),
            
            taxaMetabolicaLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 30),
            taxaMetabolicaLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            contentView2.topAnchor.constraint(equalTo: taxaMetabolicaLabel.bottomAnchor,constant: 15),
            contentView2.heightAnchor.constraint(equalToConstant: 300),
            contentView2.widthAnchor.constraint(equalToConstant: 340),
            contentView2.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            pesoLabel.topAnchor.constraint(equalTo: contentView2.topAnchor,constant: 50),
            pesoLabel.leadingAnchor.constraint(equalTo: contentView2.leadingAnchor,constant: 15),
            
            pesoTextField.centerYAnchor.constraint(equalTo: pesoLabel.centerYAnchor),
            pesoTextField.leadingAnchor.constraint(equalTo: pesoLabel.trailingAnchor,constant: 10),
            pesoTextField.trailingAnchor.constraint(equalTo: contentView2.trailingAnchor,constant: -15),
            pesoTextField.heightAnchor.constraint(equalToConstant: 25),
            
            
            alturaLabel.topAnchor.constraint(equalTo: pesoLabel.bottomAnchor,constant: 30),
            alturaLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            alturaTextField.centerYAnchor.constraint(equalTo: alturaLabel.centerYAnchor),
            alturaTextField.leadingAnchor.constraint(equalTo: alturaLabel.trailingAnchor,constant: 10),
            alturaTextField.trailingAnchor.constraint(equalTo: pesoTextField.trailingAnchor),
            alturaTextField.heightAnchor.constraint(equalToConstant: 25),
            
            idadeLabel.topAnchor.constraint(equalTo: alturaLabel.bottomAnchor,constant: 30),
            idadeLabel.leadingAnchor.constraint(equalTo: pesoLabel.leadingAnchor),
            
            idadeTextField.centerYAnchor.constraint(equalTo: idadeLabel.centerYAnchor),
            idadeTextField.leadingAnchor.constraint(equalTo: idadeLabel.trailingAnchor,constant: 10),
            idadeTextField.trailingAnchor.constraint(equalTo: pesoTextField.trailingAnchor),
            idadeTextField.heightAnchor.constraint(equalToConstant: 25),
            
            resultTaxaMetabolicaLabel.topAnchor.constraint(equalTo: idadeTextField.bottomAnchor,constant: 50),
            resultTaxaMetabolicaLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            resultTaxaMetabolicaLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            resultButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -20),
            resultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resultButton.widthAnchor.constraint(equalToConstant: 340),
            resultButton.heightAnchor.constraint(equalToConstant: 50),
            
        
        ])
    }
}
