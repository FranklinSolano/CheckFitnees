//
//  AvaliacaoCellScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/28/23.
//

import UIKit

class AvaliacaoCellScreen: UIView {
    
    lazy var dobrasLabel: UILabel = {
        let label = TextLabelCustom(title: "DOBRAS (mm)")
        label.font = UIFont(name: "Roboto-Bold", size: 18)
        label.textColor = .corOne
        return label
    }()
    
    lazy var direitoLabel: UILabel = {
        let label = TextLabelCustom(title: "Direito")
        label.font = UIFont(name: "Roboto-Bold", size: 18)
        label.textColor = .corOne
        return label
    }()
    
    lazy var esquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Esquerdo")
        label.font = UIFont(name: "Roboto-Bold", size: 18)
        label.textColor = .corOne
        return label
    }()
    
    lazy var tricepsLabel: UILabel = {
        let label = TextLabelCustom(title: "Triceps")
        return label
    }()
    
    lazy var tricepsTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var tricepsEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Triceps")
        return label
    }()
    
    lazy var tricepsEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var bicepsLabel: UILabel = {
        let label = TextLabelCustom(title: "Biceps")
        return label
    }()
    
    lazy var bicepsTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var bicepsEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Biceps")
        return label
    }()
    
    lazy var bicepsEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var peitoralLabel: UILabel = {
        let label = TextLabelCustom(title: "Peitoral")
        return label
    }()
    
    lazy var peitoralTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var peitoralEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Peitoral")
        return label
    }()
    
    lazy var peitoralEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var abdomenLabel: UILabel = {
        let label = TextLabelCustom(title: "Abdomen")
        return label
    }()
    
    lazy var abdomenTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var abdomenEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Abdomen")
        return label
    }()
    
    lazy var abdomenEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var coxaLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa")
        return label
    }()
    
    lazy var coxaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var coxaEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa")
        return label
    }()
    
    lazy var coxaEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var subescabularLabel: UILabel = {
        let label = TextLabelCustom(title: "Subescapular")
        return label
    }()
    
    lazy var subescabularTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var subescapularEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Subescaoular")
        return label
    }()
    
    lazy var subescapularEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var axiliarLabel: UILabel = {
        let label = TextLabelCustom(title: "Axiliar-Medio")
        return label
    }()
    
    lazy var axiliarTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var axiliarEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Axiliar-Medio")
        return label
    }()
    
    lazy var axiliarEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var supraLabel: UILabel = {
        let label = TextLabelCustom(title: "Suprailiaca")
        return label
    }()
    
    lazy var supraTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var supraEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Suprailiaca")
        return label
    }()
    
    lazy var supraEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var supraEspinhalLabel: UILabel = {
        let label = TextLabelCustom(title: "Supra-Espinhal")
        return label
    }()
    
    lazy var supraEspinhalTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var supraEspinhalEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Supra-Espinhal")
        return label
    }()
    
    lazy var supraEspinhalEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var panturrilhaLabel: UILabel = {
        let label = TextLabelCustom(title: "Paturrilha")
        return label
    }()
    
    lazy var panturrilhaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var panturrilhaEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Panturrilha")
        return label
    }()
    
    lazy var panturrilhaEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var medidasLabel: UILabel = {
        let label = TextLabelCustom(title: "MEDIDAS (cm)")
        label.font = UIFont(name: "Roboto-Bold", size: 18)
        label.textColor = .corOne
        return label
    }()
    
    lazy var bracoLabel: UILabel = {
        let label = TextLabelCustom(title: "Braço D Relaxado")
        return label
    }()
    
    lazy var bracoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var bracoContraidoLabel: UILabel = {
        let label = TextLabelCustom(title: "Braço D Contraido")
        return label
    }()
    
    lazy var bracoContraidoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var bracoEsquerdoLabel: UILabel = {
        let label = TextLabelCustom(title: "Braço E Relaxado")
        return label
    }()
    
    lazy var bracoEsquerdoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var bracoEsquerdoContraidoLabel: UILabel = {
        let label = TextLabelCustom(title: "Braço E Contraido")
        return label
    }()
    
    lazy var bracoEsquerdoContraidoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var peitoralMedidaLabel: UILabel = {
        let label = TextLabelCustom(title: "Peitoral")
        return label
    }()
    
    lazy var peitoralMedidaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var abdominalLabel: UILabel = {
        let label = TextLabelCustom(title: "Abdômen")
        return label
    }()
    
    lazy var abdominalTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var coxaMedidaLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa Direita")
        return label
    }()
    
    lazy var coxaMedidaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var coxaEsquerdaMedidaLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa Esquerda")
        return label
    }()
    
    lazy var coxaEsquerdaMedidaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var panturrilhaMedidaLabel: UILabel = {
        let label = TextLabelCustom(title: "Paturrilha D")
        return label
    }()
    
    lazy var panturrilhaMedidaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var panturrilhaEsquerdoMedidaLabel: UILabel = {
        let label = TextLabelCustom(title: "Panturrilha E")
        return label
    }()
    
    lazy var panturrilhaEsquerdoMedidaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "Ex:10")
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var salvarDadosButton: UIButton = {
        let button = ButtonCustom(title: "SALVAR")
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
    
    func teste2(){
        print("deu certooooo")
    }
}

extension AvaliacaoCellScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [dobrasLabel,direitoLabel,esquerdoLabel,tricepsLabel,tricepsTextField,tricepsEsquerdoLabel,tricepsEsquerdoTextField,subescabularLabel,subescabularTextField,subescapularEsquerdoLabel,subescapularEsquerdoTextField,axiliarLabel,axiliarTextField,axiliarEsquerdoLabel,axiliarEsquerdoTextField,bicepsLabel,bicepsTextField,bicepsEsquerdoLabel,bicepsEsquerdoTextField,peitoralLabel,peitoralTextField,peitoralEsquerdoLabel,peitoralEsquerdoTextField,abdomenLabel,abdomenTextField,abdomenEsquerdoLabel,abdomenEsquerdoTextField,coxaLabel,coxaTextField,coxaEsquerdoLabel,coxaEsquerdoTextField,supraLabel,supraTextField,supraEsquerdoLabel,supraEsquerdoTextField,supraEspinhalLabel,supraEspinhalTextField,supraEspinhalEsquerdoLabel,supraEspinhalEsquerdoTextField,panturrilhaLabel,panturrilhaTextField,panturrilhaEsquerdoLabel,panturrilhaEsquerdoTextField,medidasLabel,bracoLabel,bracoTextField,bracoContraidoLabel,bracoContraidoTextField,bracoEsquerdoLabel,bracoEsquerdoTextField,bracoEsquerdoContraidoLabel,bracoEsquerdoContraidoTextField,peitoralMedidaLabel,peitoralMedidaTextField,abdominalLabel,abdominalTextField,coxaMedidaLabel,coxaMedidaTextField,coxaEsquerdaMedidaLabel,coxaEsquerdaMedidaTextField,panturrilhaMedidaLabel,panturrilhaMedidaTextField,panturrilhaEsquerdoMedidaLabel,panturrilhaEsquerdoMedidaTextField,salvarDadosButton]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            dobrasLabel.topAnchor.constraint(equalTo: topAnchor),
            dobrasLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            direitoLabel.topAnchor.constraint(equalTo: dobrasLabel.bottomAnchor,constant: 35),
            direitoLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 70),
            
            esquerdoLabel.topAnchor.constraint(equalTo: dobrasLabel.bottomAnchor,constant: 35),
            esquerdoLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -65),
            
            tricepsLabel.topAnchor.constraint(equalTo: direitoLabel.bottomAnchor,constant: 20),
            tricepsLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            tricepsTextField.centerYAnchor.constraint(equalTo: tricepsLabel.centerYAnchor),
            tricepsTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 126),
            tricepsTextField.widthAnchor.constraint(equalToConstant: 60),
            
            bicepsLabel.topAnchor.constraint(equalTo: tricepsLabel.bottomAnchor,constant: 20),
            bicepsLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            bicepsTextField.centerYAnchor.constraint(equalTo: bicepsLabel.centerYAnchor),
            bicepsTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            bicepsTextField.widthAnchor.constraint(equalToConstant: 60),
            
            peitoralLabel.topAnchor.constraint(equalTo: bicepsLabel.bottomAnchor,constant: 20),
            peitoralLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            peitoralTextField.centerYAnchor.constraint(equalTo: peitoralLabel.centerYAnchor),
            peitoralTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            peitoralTextField.widthAnchor.constraint(equalToConstant: 60),
            
            supraLabel.topAnchor.constraint(equalTo: peitoralLabel.bottomAnchor,constant: 20),
            supraLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            supraTextField.centerYAnchor.constraint(equalTo: supraLabel.centerYAnchor),
            supraTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            supraTextField.widthAnchor.constraint(equalToConstant: 60),
            
            axiliarLabel.topAnchor.constraint(equalTo: supraLabel.bottomAnchor,constant: 20),
            axiliarLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            axiliarTextField.centerYAnchor.constraint(equalTo: axiliarLabel.centerYAnchor),
            axiliarTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            axiliarTextField.widthAnchor.constraint(equalToConstant: 60),
            
            supraEspinhalLabel.topAnchor.constraint(equalTo: axiliarLabel.bottomAnchor,constant: 20),
            supraEspinhalLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            supraEspinhalTextField.centerYAnchor.constraint(equalTo: supraEspinhalLabel.centerYAnchor),
            supraEspinhalTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            supraEspinhalTextField.widthAnchor.constraint(equalToConstant: 60),
            
            subescabularLabel.topAnchor.constraint(equalTo: supraEspinhalLabel.bottomAnchor,constant: 20),
            subescabularLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            subescabularTextField.centerYAnchor.constraint(equalTo: subescabularLabel.centerYAnchor),
            subescabularTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            subescabularTextField.widthAnchor.constraint(equalToConstant: 60),
            
            abdomenLabel.topAnchor.constraint(equalTo: subescabularLabel.bottomAnchor,constant: 20),
            abdomenLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            abdomenTextField.centerYAnchor.constraint(equalTo: abdomenLabel.centerYAnchor),
            abdomenTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            abdomenTextField.widthAnchor.constraint(equalToConstant: 60),
            
            coxaLabel.topAnchor.constraint(equalTo: abdomenLabel.bottomAnchor,constant: 20),
            coxaLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            coxaTextField.centerYAnchor.constraint(equalTo: coxaLabel.centerYAnchor),
            coxaTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            coxaTextField.widthAnchor.constraint(equalToConstant: 60),
            
            panturrilhaLabel.topAnchor.constraint(equalTo: coxaLabel.bottomAnchor,constant: 20),
            panturrilhaLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            panturrilhaTextField.centerYAnchor.constraint(equalTo: panturrilhaLabel.centerYAnchor),
            panturrilhaTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            panturrilhaTextField.widthAnchor.constraint(equalToConstant: 60),
            
            tricepsEsquerdoLabel.topAnchor.constraint(equalTo: esquerdoLabel.bottomAnchor,constant: 20),
            tricepsEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsTextField.trailingAnchor,constant: 32.5),
            
            tricepsEsquerdoTextField.centerYAnchor.constraint(equalTo: tricepsEsquerdoLabel.centerYAnchor),
            tricepsEsquerdoTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            tricepsEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),
            
            bicepsEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsEsquerdoLabel.leadingAnchor),
            bicepsEsquerdoLabel.topAnchor.constraint(equalTo: tricepsEsquerdoLabel.bottomAnchor,constant: 20),
            
            bicepsEsquerdoTextField.centerYAnchor.constraint(equalTo: bicepsEsquerdoLabel.centerYAnchor),
            bicepsEsquerdoTextField.trailingAnchor.constraint(equalTo: tricepsEsquerdoTextField.trailingAnchor),
            bicepsEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),
            
            peitoralEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsEsquerdoLabel.leadingAnchor),
            peitoralEsquerdoLabel.topAnchor.constraint(equalTo: bicepsEsquerdoLabel.bottomAnchor,constant: 20),
            
            peitoralEsquerdoTextField.centerYAnchor.constraint(equalTo: peitoralEsquerdoLabel.centerYAnchor),
            peitoralEsquerdoTextField.trailingAnchor.constraint(equalTo: tricepsEsquerdoTextField.trailingAnchor),
            peitoralEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),
            
            supraEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsEsquerdoLabel.leadingAnchor),
            supraEsquerdoLabel.topAnchor.constraint(equalTo: peitoralEsquerdoLabel.bottomAnchor,constant: 20),
            
            supraEsquerdoTextField.centerYAnchor.constraint(equalTo: supraEsquerdoLabel.centerYAnchor),
            supraEsquerdoTextField.trailingAnchor.constraint(equalTo: tricepsEsquerdoTextField.trailingAnchor),
            supraEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),
            
            axiliarEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsEsquerdoLabel.leadingAnchor),
            axiliarEsquerdoLabel.topAnchor.constraint(equalTo: supraEsquerdoLabel.bottomAnchor,constant: 20),
            
            axiliarEsquerdoTextField.centerYAnchor.constraint(equalTo: axiliarEsquerdoLabel.centerYAnchor),
            axiliarEsquerdoTextField.trailingAnchor.constraint(equalTo: tricepsEsquerdoTextField.trailingAnchor),
            axiliarEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),
            
            supraEspinhalEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsEsquerdoLabel.leadingAnchor),
            supraEspinhalEsquerdoLabel.topAnchor.constraint(equalTo: axiliarEsquerdoLabel.bottomAnchor,constant: 20),
            
            supraEspinhalEsquerdoTextField.centerYAnchor.constraint(equalTo: supraEspinhalEsquerdoLabel.centerYAnchor),
            supraEspinhalEsquerdoTextField.trailingAnchor.constraint(equalTo: tricepsEsquerdoTextField.trailingAnchor),
            supraEspinhalEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),
            
            subescapularEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsEsquerdoLabel.leadingAnchor),
            subescapularEsquerdoLabel.topAnchor.constraint(equalTo: supraEspinhalEsquerdoLabel.bottomAnchor,constant: 20),
            
            subescapularEsquerdoTextField.centerYAnchor.constraint(equalTo: subescapularEsquerdoLabel.centerYAnchor),
            subescapularEsquerdoTextField.trailingAnchor.constraint(equalTo: tricepsEsquerdoTextField.trailingAnchor),
            subescapularEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),
            
            abdomenEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsEsquerdoLabel.leadingAnchor),
            abdomenEsquerdoLabel.topAnchor.constraint(equalTo: subescapularEsquerdoLabel.bottomAnchor,constant: 20),
            
            abdomenEsquerdoTextField.centerYAnchor.constraint(equalTo: abdomenEsquerdoLabel.centerYAnchor),
            abdomenEsquerdoTextField.trailingAnchor.constraint(equalTo: tricepsEsquerdoTextField.trailingAnchor),
            abdomenEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),
            
            coxaEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsEsquerdoLabel.leadingAnchor),
            coxaEsquerdoLabel.topAnchor.constraint(equalTo: abdomenEsquerdoLabel.bottomAnchor,constant: 20),
            
            coxaEsquerdoTextField.centerYAnchor.constraint(equalTo: coxaEsquerdoLabel.centerYAnchor),
            coxaEsquerdoTextField.trailingAnchor.constraint(equalTo: tricepsEsquerdoTextField.trailingAnchor),
            coxaEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),
            
            panturrilhaEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsEsquerdoLabel.leadingAnchor),
            panturrilhaEsquerdoLabel.topAnchor.constraint(equalTo: coxaEsquerdoLabel.bottomAnchor,constant: 20),
            
            panturrilhaEsquerdoTextField.centerYAnchor.constraint(equalTo: panturrilhaEsquerdoLabel.centerYAnchor),
            panturrilhaEsquerdoTextField.trailingAnchor.constraint(equalTo: tricepsEsquerdoTextField.trailingAnchor),
            panturrilhaEsquerdoTextField.widthAnchor.constraint(equalToConstant: 60),

            medidasLabel.topAnchor.constraint(equalTo: panturrilhaLabel.bottomAnchor,constant: 35),
            medidasLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            peitoralMedidaLabel.topAnchor.constraint(equalTo: medidasLabel.bottomAnchor,constant: 20),
            peitoralMedidaLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            peitoralMedidaTextField.centerYAnchor.constraint(equalTo: peitoralMedidaLabel.centerYAnchor),
            peitoralMedidaTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            peitoralMedidaTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 85),
            
            abdominalLabel.topAnchor.constraint(equalTo: peitoralMedidaLabel.bottomAnchor,constant: 20),
            abdominalLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            abdominalTextField.centerYAnchor.constraint(equalTo: abdominalLabel.centerYAnchor),
            abdominalTextField.leadingAnchor.constraint(equalTo: peitoralMedidaTextField.leadingAnchor),
            abdominalTextField.trailingAnchor.constraint(equalTo: peitoralMedidaTextField.trailingAnchor),
            
            bracoLabel.topAnchor.constraint(equalTo: abdominalLabel.bottomAnchor,constant: 20),
            bracoLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            bracoTextField.centerYAnchor.constraint(equalTo: bracoLabel.centerYAnchor),
            bracoTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 135),
            bracoTextField.widthAnchor.constraint(equalToConstant: 50),
            
            bracoEsquerdoLabel.topAnchor.constraint(equalTo: abdominalLabel.bottomAnchor,constant: 20),
            bracoEsquerdoLabel.leadingAnchor.constraint(equalTo: tricepsTextField.trailingAnchor,constant: 20),
            
            bracoEsquerdoTextField.centerYAnchor.constraint(equalTo: bracoEsquerdoLabel.centerYAnchor),
            bracoEsquerdoTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            bracoEsquerdoTextField.widthAnchor.constraint(equalToConstant: 50),
            
            bracoContraidoLabel.topAnchor.constraint(equalTo: bracoLabel.bottomAnchor,constant: 20),
            bracoContraidoLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            bracoContraidoTextField.centerYAnchor.constraint(equalTo: bracoContraidoLabel.centerYAnchor),
            bracoContraidoTextField.leadingAnchor.constraint(equalTo: bracoTextField.leadingAnchor),
            bracoContraidoTextField.widthAnchor.constraint(equalToConstant: 50),
            
            bracoEsquerdoContraidoLabel.topAnchor.constraint(equalTo: bracoLabel.bottomAnchor,constant: 20),
            bracoEsquerdoContraidoLabel.leadingAnchor.constraint(equalTo: bracoEsquerdoLabel.leadingAnchor),
            
            bracoEsquerdoContraidoTextField.centerYAnchor.constraint(equalTo: bracoEsquerdoContraidoLabel.centerYAnchor),
            bracoEsquerdoContraidoTextField.trailingAnchor.constraint(equalTo: bracoEsquerdoTextField.trailingAnchor),
            bracoEsquerdoContraidoTextField.widthAnchor.constraint(equalToConstant: 50),
            
            coxaMedidaLabel.topAnchor.constraint(equalTo: bracoContraidoLabel.bottomAnchor,constant: 20),
            coxaMedidaLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            coxaMedidaTextField.centerYAnchor.constraint(equalTo: coxaMedidaLabel.centerYAnchor),
            coxaMedidaTextField.leadingAnchor.constraint(equalTo: bracoTextField.leadingAnchor),
            coxaMedidaTextField.widthAnchor.constraint(equalToConstant: 50),
            
            coxaEsquerdaMedidaLabel.topAnchor.constraint(equalTo: bracoContraidoLabel.bottomAnchor,constant: 20),
            coxaEsquerdaMedidaLabel.leadingAnchor.constraint(equalTo: bracoEsquerdoLabel.leadingAnchor),
            
            coxaEsquerdaMedidaTextField.centerYAnchor.constraint(equalTo: coxaEsquerdaMedidaLabel.centerYAnchor),
            coxaEsquerdaMedidaTextField.trailingAnchor.constraint(equalTo: bracoEsquerdoTextField.trailingAnchor),
            coxaEsquerdaMedidaTextField.widthAnchor.constraint(equalToConstant: 50),
            
            panturrilhaMedidaLabel.topAnchor.constraint(equalTo: coxaMedidaLabel.bottomAnchor,constant: 20),
            panturrilhaMedidaLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),

            panturrilhaMedidaTextField.centerYAnchor.constraint(equalTo: panturrilhaMedidaLabel.centerYAnchor),
            panturrilhaMedidaTextField.leadingAnchor.constraint(equalTo: bracoTextField.leadingAnchor),
            panturrilhaMedidaTextField.widthAnchor.constraint(equalToConstant: 50),

            panturrilhaEsquerdoMedidaLabel.topAnchor.constraint(equalTo: coxaMedidaLabel.bottomAnchor,constant: 20),
            panturrilhaEsquerdoMedidaLabel.leadingAnchor.constraint(equalTo: bracoEsquerdoLabel.leadingAnchor),

            panturrilhaEsquerdoMedidaTextField.centerYAnchor.constraint(equalTo: panturrilhaEsquerdoMedidaLabel.centerYAnchor),
            panturrilhaEsquerdoMedidaTextField.trailingAnchor.constraint(equalTo: bracoEsquerdoTextField.trailingAnchor),
            panturrilhaEsquerdoMedidaTextField.widthAnchor.constraint(equalToConstant: 50),
           
            salvarDadosButton.topAnchor.constraint(equalTo: panturrilhaMedidaTextField.bottomAnchor, constant: 35),
            salvarDadosButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            salvarDadosButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            salvarDadosButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
