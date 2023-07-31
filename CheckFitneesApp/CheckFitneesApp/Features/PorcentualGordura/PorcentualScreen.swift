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
    func validacaoCampos()
}

class PorcentualScreen: UIView {
    
    weak var delegate: PorcentualHomemScreenProtocol?
    public func delegate(delegate: PorcentualHomemScreenProtocol){
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
        button.setTitleColor(.corOne, for: .normal)
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
    
    lazy var porcentualLabel: UILabel = {
        let label = TextLabelCustom(title: "Porcentual de Gordura")
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
    
    lazy var triciptalLabel: UILabel = {
        let label = TextLabelCustom(title: "• Triciptal:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var triciptalTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .corOne
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var peitoralLabel: UILabel = {
        let label = TextLabelCustom(title: "• Peitoral:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var peitoralTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .corOne
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var supraLabel: UILabel = {
        let label = TextLabelCustom(title: "• Supra-ilíaca:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var supraTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .corOne
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var abdominalLabel: UILabel = {
        let label = TextLabelCustom(title: "• Abdominal:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var abdominalTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .corOne
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var coxaLabel: UILabel = {
        let label = TextLabelCustom(title: "• Coxa:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var coxaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .corOne
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var subescapularLabel: UILabel = {
        let label = TextLabelCustom(title: "• Subescapular")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var subescapularTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .corOne
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var axilarLabel: UILabel = {
        let label = TextLabelCustom(title: "• Axiliar Média:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var axilarTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .corOne
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var resultPorcentualLabel: UILabel = {
        let label = TextLabelCustom(title: "Porcentual de Gordura 0 %")
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
        triciptalTextField.delegate = delegate
        peitoralTextField.delegate = delegate
        supraTextField.delegate = delegate
        abdominalTextField.delegate = delegate
        coxaTextField.delegate = delegate
        subescapularTextField.delegate = delegate
        axilarTextField.delegate = delegate
    }
    
    public func validacaoCamposDaTela(){
        let triceps = triciptalTextField.text ?? ""
        let peitoral = peitoralTextField.text ?? ""
        let axiliar = axilarTextField.text ?? ""
        let supra = supraTextField.text ?? ""
        let subescapular = subescapularTextField.text ?? ""
        let coxa = coxaTextField.text ?? ""
        let abdomem  = abdominalTextField.text ?? ""
        
        if triceps.isEmpty && peitoral.isEmpty && axiliar.isEmpty && supra.isEmpty && subescapular.isEmpty && coxa.isEmpty && abdomem.isEmpty {
            delegate?.validacaoCampos()
        }
    }
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc private func tappedCalcularButton(){
        delegate?.actionCalcular()
    }
}

//MARK: - ViewCode

extension PorcentualScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView,backButton,imagePerson,nameLabel,porcentualLabel,contentView2,triciptalLabel,triciptalTextField,peitoralLabel, peitoralTextField, supraLabel, supraTextField,abdominalLabel,abdominalTextField,coxaLabel,coxaTextField, subescapularLabel,subescapularTextField,axilarLabel,axilarTextField,resultPorcentualLabel,resultButton]
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
            
            porcentualLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 30),
            porcentualLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            contentView2.topAnchor.constraint(equalTo: porcentualLabel.bottomAnchor,constant: 15),
            contentView2.heightAnchor.constraint(equalToConstant: 338),
            contentView2.widthAnchor.constraint(equalToConstant: 338),
            contentView2.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            triciptalLabel.topAnchor.constraint(equalTo: contentView2.topAnchor,constant: 45),
            triciptalLabel.leadingAnchor.constraint(equalTo: contentView2.leadingAnchor,constant: 20),
            
            triciptalTextField.centerYAnchor.constraint(equalTo: triciptalLabel.centerYAnchor),
            triciptalTextField.leadingAnchor.constraint(equalTo: triciptalLabel.trailingAnchor,constant: 10),
            triciptalTextField.trailingAnchor.constraint(equalTo: contentView2.trailingAnchor,constant: -15),
            
            peitoralLabel.topAnchor.constraint(equalTo: triciptalTextField.bottomAnchor,constant: 15),
            peitoralLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            peitoralTextField.centerYAnchor.constraint(equalTo: peitoralLabel.centerYAnchor),
            peitoralTextField.leadingAnchor.constraint(equalTo: peitoralLabel.trailingAnchor,constant: 10),
            peitoralTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            supraLabel.topAnchor.constraint(equalTo: peitoralLabel.bottomAnchor,constant: 15),
            supraLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            supraTextField.centerYAnchor.constraint(equalTo: supraLabel.centerYAnchor),
            supraTextField.leadingAnchor.constraint(equalTo: supraLabel.trailingAnchor,constant: 10),
            supraTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            abdominalLabel.topAnchor.constraint(equalTo: supraLabel.bottomAnchor,constant: 15),
            abdominalLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            abdominalTextField.centerYAnchor.constraint(equalTo: abdominalLabel.centerYAnchor),
            abdominalTextField.leadingAnchor.constraint(equalTo: abdominalLabel.trailingAnchor,constant: 10),
            abdominalTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            coxaLabel.topAnchor.constraint(equalTo: abdominalTextField.bottomAnchor,constant: 15),
            coxaLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            coxaTextField.centerYAnchor.constraint(equalTo: coxaLabel.centerYAnchor),
            coxaTextField.leadingAnchor.constraint(equalTo: coxaLabel.trailingAnchor,constant: 8),
            coxaTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            subescapularLabel.topAnchor.constraint(equalTo: coxaTextField.bottomAnchor,constant: 15),
            subescapularLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            subescapularTextField.centerYAnchor.constraint(equalTo: subescapularLabel.centerYAnchor),
            subescapularTextField.leadingAnchor.constraint(equalTo: subescapularLabel.trailingAnchor,constant: 8),
            subescapularTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            axilarLabel.topAnchor.constraint(equalTo: subescapularLabel.bottomAnchor,constant: 15),
            axilarLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            axilarTextField.centerYAnchor.constraint(equalTo: axilarLabel.centerYAnchor),
            axilarTextField.leadingAnchor.constraint(equalTo: axilarLabel.trailingAnchor,constant: 8),
            axilarTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            resultPorcentualLabel.topAnchor.constraint(equalTo: axilarTextField.bottomAnchor,constant: 30),
            resultPorcentualLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            resultPorcentualLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            resultButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -20),
            resultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resultButton.widthAnchor.constraint(equalToConstant: 340),
            resultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
