//
//  AvaliacaoScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/6/23.
//

import UIKit

protocol AvaliacaoScreenProtocol: AnyObject {
    func actionBackButton()
    func actionSalvarDadosButton()
}

class AvaliacaoScreen: UIView {
    
    weak var delegate: AvaliacaoScreenProtocol?
    func delegate(delegate:AvaliacaoScreenProtocol) {
        self.delegate = delegate
    }
    var buttonSalvarDados = false
    
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
    
    lazy var avaliacaoLabel: UILabel = {
        let label = TextLabelCustom(title: "Status da Avaliação")
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
    
    lazy var alturaLabel: UILabel = {
        let label = TextLabelCustom(title: "Altura:")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var alturaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 170")
        return tf
    }()
    
    lazy var idadeLabel: UILabel = {
        let label = TextLabelCustom(title: "Idade:")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var idadeTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 21")
        return tf
    }()
    
    lazy var pesoLabel: UILabel = {
        let label = TextLabelCustom(title: "Peso:")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var pesoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 70")
        return tf
    }()
    
    lazy var dobrasLabel: UILabel = {
        let label = TextLabelCustom(title: "Dobras")
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
    
    lazy var stackView: UIStackView = {
        let stack =  UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .leading
        stack.distribution = .fillProportionally
        stack.spacing = 15
        stack.addArrangedSubview(tricepsLabel)
        stack.addArrangedSubview(bicepsLabel)
        stack.addArrangedSubview(peitoralLabel)
        stack.addArrangedSubview(coxaLabel)
        stack.addArrangedSubview(abdomenLabel)
        return stack
    }()
    
    lazy var stackView2: UIStackView = {
        let stack =  UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillProportionally
        stack.spacing = 9
        stack.backgroundColor = .clear
        stack.addArrangedSubview(tricepsTextField)
        stack.addArrangedSubview(bicepsTextField)
        stack.addArrangedSubview(peitoralTextField)
        stack.addArrangedSubview(coxaTextField)
        stack.addArrangedSubview(abdomenTextField)
        return stack
    }()
    
    lazy var tricepsLabel: UILabel = {
        let label = TextLabelCustom(title: "Triceps: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var tricepsTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var subescapularLabel: UILabel = {
        let label = TextLabelCustom(title: "Subescapular: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var subescapularTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var bicepsLabel: UILabel = {
        let label = TextLabelCustom(title: "Biceps: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var bicepsTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var axiliarLabel: UILabel = {
        let label = TextLabelCustom(title: "Axiliar Medial: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var axiliarTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var peitoralLabel: UILabel = {
        let label = TextLabelCustom(title: "Peitoral: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var peitoralTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var supraLabel: UILabel = {
        let label = TextLabelCustom(title: "Supra-iliaca: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var supraTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var abdomenLabel: UILabel = {
        let label = TextLabelCustom(title: "Abdomen: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var abdomenTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var supraEspinhalLabel: UILabel = {
        let label = TextLabelCustom(title: "Supra-Espinhal: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var supraEspinhalTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var coxaLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var coxaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var panturrilhaLabel: UILabel = {
        let label = TextLabelCustom(title: "Panturrilha: D")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var panturrilhaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "0")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var medidasLabel: UILabel = {
        let label = TextLabelCustom(title: "Medidas")
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
    
    lazy var bracoLabel: UILabel = {
        let label = TextLabelCustom(title: "Braço:")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var bracoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var peitoralMedidaLabel: UILabel = {
        let label = TextLabelCustom(title: "Peitoral:")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var peitoralMedidaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var abdomenMedidaLabel: UILabel = {
        let label = TextLabelCustom(title: "Abdomen:")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var abdomenMedidaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var coxaMedidaLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa:")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var coxaMedidaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var panturrilhaMedidaLabel: UILabel = {
        let label = TextLabelCustom(title: "Panturrilha:")
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var panturrilhaMedidaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex: 10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var salvarDadosButton: UIButton = {
        let button = ButtonCustom(title: "Salvar Dados")
        button.addTarget(self, action: #selector(tappedSalvarDadosButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .corTwo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTextFiled(delegate: UITextFieldDelegate) {
        alturaTextField.delegate = delegate
        idadeTextField.delegate = delegate
        pesoTextField.delegate = delegate
        tricepsTextField.delegate = delegate
        bicepsTextField.delegate = delegate
        peitoralTextField.delegate = delegate
        abdomenTextField.delegate = delegate
        coxaTextField.delegate = delegate
        subescapularTextField.delegate = delegate
        axiliarTextField.delegate = delegate
        supraTextField.delegate = delegate
        supraEspinhalTextField.delegate = delegate
        panturrilhaTextField.delegate = delegate
        bracoTextField.delegate = delegate
        abdomenMedidaTextField.delegate = delegate
        panturrilhaMedidaTextField.delegate = delegate
        peitoralMedidaTextField.delegate = delegate
        coxaMedidaTextField.delegate = delegate
    }
    
    func configSalvarDadosButton(){
        let altura = alturaTextField.text ?? ""
        let idade = idadeTextField.text ?? ""
        let peso =  pesoTextField.text ?? ""
        let triceps =  tricepsTextField.text ?? ""
        let biceps = bicepsTextField.text ?? ""
        let peitoral = peitoralTextField.text ?? ""
        let abdomen =  abdomenTextField.text ?? ""
        let coxa =  coxaTextField.text ?? ""
        let subescapular = subescapularTextField.text ?? ""
        let axilar = axiliarTextField.text ?? ""
        let supra = supraTextField.text ?? ""
        let supraEspinhal =  supraEspinhalTextField.text ?? ""
        let panturrilha =  panturrilhaTextField.text ?? ""
        let braco =  bracoTextField.text ?? ""
        let abdomenMedida = abdomenMedidaTextField.text ?? ""
        let panturrilhaMedida = panturrilhaMedidaTextField.text ?? ""
        _ =  peitoralMedidaTextField.text ?? ""
        _ =  coxaMedidaTextField.text ?? ""
        
        if !altura.isEmpty && !idade.isEmpty && !peso.isEmpty && !triceps.isEmpty && !biceps.isEmpty && !peitoral.isEmpty && !abdomen.isEmpty && !coxa.isEmpty && !subescapular.isEmpty && !axilar.isEmpty && !supra.isEmpty && !supraEspinhal.isEmpty && !panturrilha.isEmpty && !braco.isEmpty && !abdomenMedida.isEmpty && !panturrilhaMedida.isEmpty {
            salvarDadosButton.setTitleColor(.corTwo, for: .normal)
            salvarDadosButton.backgroundColor = .corOne
            salvarDadosButton.isEnabled = true
        } else {
            salvarDadosButton.setTitleColor(.lightGray, for: .normal)
            salvarDadosButton.backgroundColor = .gray
            salvarDadosButton.isEnabled = false 
        }
    }
    
    func bloquearDados(){
        if buttonSalvarDados {
            salvarDadosButton.setTitle("Salvar Dados", for: .normal)
            alturaTextField.isEnabled = true
            idadeTextField.isEnabled = true
            pesoTextField.isEnabled = true
            tricepsTextField.isEnabled = true
            bicepsTextField.isEnabled = true
            peitoralTextField.isEnabled = true
            abdomenTextField.isEnabled = true
            coxaTextField.isEnabled = true
            subescapularTextField.isEnabled = true
            axiliarTextField.isEnabled = true
            supraTextField.isEnabled = true
            supraEspinhalTextField.isEnabled = true
            panturrilhaTextField.isEnabled = true
            bracoTextField.isEnabled = true
            abdomenMedidaTextField.isEnabled = true
            panturrilhaMedidaTextField.isEnabled = true
            peitoralMedidaTextField.isEnabled = true
            coxaMedidaTextField.isEnabled = true
            buttonSalvarDados = false
        } else{
            salvarDadosButton.setTitle("Editar Dados", for: .normal)
            alturaTextField.isEnabled = false
            idadeTextField.isEnabled = false
            pesoTextField.isEnabled = false
            tricepsTextField.isEnabled = false
            bicepsTextField.isEnabled = false
            peitoralTextField.isEnabled = false
            abdomenTextField.isEnabled = false
            coxaTextField.isEnabled = false
            subescapularTextField.isEnabled = false
            axiliarTextField.isEnabled = false
            supraTextField.isEnabled = false
            supraEspinhalTextField.isEnabled = false
            panturrilhaTextField.isEnabled = false
            bracoTextField.isEnabled = false
            abdomenMedidaTextField.isEnabled = false
            panturrilhaMedidaTextField.isEnabled = false
            peitoralMedidaTextField.isEnabled = false
            coxaMedidaTextField.isEnabled = false
            buttonSalvarDados = true
        }
    }
    
    @objc func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc func tappedSalvarDadosButton(){
        delegate?.actionSalvarDadosButton()
    }
    
}

extension AvaliacaoScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView,backButton,imagePerson,nameLabel,avaliacaoLabel,alturaLabel,alturaTextField,idadeLabel,idadeTextField,pesoLabel,pesoTextField,dobrasLabel,stackView,stackView2,subescapularLabel,subescapularTextField,axiliarLabel,axiliarTextField,supraLabel,supraTextField,supraEspinhalLabel,supraEspinhalTextField,panturrilhaLabel,panturrilhaTextField,medidasLabel,bracoLabel,bracoTextField,peitoralMedidaLabel,peitoralMedidaTextField,abdomenMedidaLabel,abdomenMedidaTextField,coxaMedidaLabel,coxaMedidaTextField,panturrilhaMedidaLabel,panturrilhaMedidaTextField,salvarDadosButton]
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
            
            avaliacaoLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 10),
            avaliacaoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            alturaLabel.topAnchor.constraint(equalTo: avaliacaoLabel.bottomAnchor,constant: 20),
            alturaLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            alturaTextField.centerYAnchor.constraint(equalTo: alturaLabel.centerYAnchor),
            alturaTextField.leadingAnchor.constraint(equalTo: alturaLabel.trailingAnchor, constant: 10),
            alturaTextField.widthAnchor.constraint(equalToConstant: 60),
            alturaTextField.heightAnchor.constraint(equalToConstant: 15),
            
            idadeLabel.topAnchor.constraint(equalTo: alturaLabel.topAnchor),
            idadeLabel.leadingAnchor.constraint(equalTo: alturaTextField.trailingAnchor,constant: 15),
            
            idadeTextField.centerYAnchor.constraint(equalTo: alturaLabel.centerYAnchor),
            idadeTextField.leadingAnchor.constraint(equalTo: idadeLabel.trailingAnchor, constant: 10),
            idadeTextField.widthAnchor.constraint(equalToConstant: 60),
            idadeTextField.heightAnchor.constraint(equalToConstant: 15),
            
            pesoLabel.topAnchor.constraint(equalTo: alturaLabel.topAnchor),
            pesoLabel.leadingAnchor.constraint(equalTo: idadeTextField.trailingAnchor,constant: 15),
            
            pesoTextField.centerYAnchor.constraint(equalTo: alturaLabel.centerYAnchor),
            pesoTextField.leadingAnchor.constraint(equalTo: pesoLabel.trailingAnchor, constant: 10),
            pesoTextField.widthAnchor.constraint(equalToConstant: 60),
            pesoTextField.heightAnchor.constraint(equalToConstant: 15),
            
            medidasLabel.topAnchor.constraint(equalTo: alturaLabel.bottomAnchor,constant: 20),
            medidasLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        
            salvarDadosButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            salvarDadosButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            salvarDadosButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            salvarDadosButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
