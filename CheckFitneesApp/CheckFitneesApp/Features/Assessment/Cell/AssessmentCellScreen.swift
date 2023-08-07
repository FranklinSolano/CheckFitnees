//
//  AvaliacaoCellScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/28/23.
//

import UIKit

final class AssessmentCellScreen: UIView {
    
    lazy var foldsLabel: UILabel = {
        let label = TextLabelCustom(title: "DOBRAS (mm)")
        label.font = UIFont(name: "Roboto-Bold", size: 18)
        label.textColor = .primaryColor
        return label
    }()
    
    lazy var rightLabel: UILabel = {
        let label = TextLabelCustom(title: "Direito")
        label.font = UIFont(name: "Roboto-Bold", size: 18)
        label.textColor = .primaryColor
        return label
    }()
    
    lazy var leftLabel: UILabel = {
        let label = TextLabelCustom(title: "Esquerdo")
        label.font = UIFont(name: "Roboto-Bold", size: 18)
        label.textColor = .primaryColor
        return label
    }()
    
    lazy var tricepsLabel: UILabel = {
        let label = TextLabelCustom(title: "Triceps")
        return label
    }()
    
    lazy var tricepsTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var tricepsLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Triceps")
        return label
    }()
    
    lazy var tricepsLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var bicepsLabel: UILabel = {
        let label = TextLabelCustom(title: "Biceps")
        return label
    }()
    
    lazy var bicepsTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var bicepsLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Biceps")
        return label
    }()
    
    lazy var bicepsLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var breastplateLabel: UILabel = {
        let label = TextLabelCustom(title: "Peitoral")
        return label
    }()
    
    lazy var breastplateTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var breastplateLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Peitoral")
        return label
    }()
    
    lazy var breastplateLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var abdomenLabel: UILabel = {
        let label = TextLabelCustom(title: "Abdomen")
        return label
    }()
    
    lazy var abdomenTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var abdomenLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Abdomen")
        return label
    }()
    
    lazy var abdomenLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var thighLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa")
        return label
    }()
    
    lazy var thighTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var thighLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa")
        return label
    }()
    
    lazy var thighLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var subscabularLabel: UILabel = {
        let label = TextLabelCustom(title: "Subescapular")
        return label
    }()
    
    lazy var subscabularTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var subscapularLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Subescaoular")
        return label
    }()
    
    lazy var subscapularLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var middleAssistantLabel: UILabel = {
        let label = TextLabelCustom(title: "Axiliar-Medio")
        return label
    }()
    
    lazy var middleAssistantTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var middleAssistantLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Axiliar-Medio")
        return label
    }()
    
    lazy var middleAssistantLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var suprailiacLabel: UILabel = {
        let label = TextLabelCustom(title: "Suprailiaca")
        return label
    }()
    
    lazy var suprailiacTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var suprailiacLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Suprailiaca")
        return label
    }()
    
    lazy var suprailiacLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var supraspinalLabel: UILabel = {
        let label = TextLabelCustom(title: "Supra-Espinhal")
        return label
    }()
    
    lazy var supraspinalTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var supraspinalLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Supra-Espinhal")
        return label
    }()
    
    lazy var supraspinalLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var calfLabel: UILabel = {
        let label = TextLabelCustom(title: "Paturrilha")
        return label
    }()
    
    lazy var calfTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var calfLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Panturrilha")
        return label
    }()
    
    lazy var calfLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var measurementsLabel: UILabel = {
        let label = TextLabelCustom(title: "MEDIDAS (cm)")
        label.font = UIFont(name: "Roboto-Bold", size: 18)
        label.textColor = .primaryColor
        return label
    }()
    
    lazy var armLabel: UILabel = {
        let label = TextLabelCustom(title: "Braço D Relaxado")
        return label
    }()
    
    lazy var armTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var contractedArmLabel: UILabel = {
        let label = TextLabelCustom(title: "Braço D Contraido")
        return label
    }()
    
    lazy var contractedArmTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var armLeftLabel: UILabel = {
        let label = TextLabelCustom(title: "Braço E Relaxado")
        return label
    }()
    
    lazy var armLeftTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var contractedLeftArmLabel: UILabel = {
        let label = TextLabelCustom(title: "Braço E Contraido")
        return label
    }()
    
    lazy var contractedLeftArmTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var chestMeasurementLabel: UILabel = {
        let label = TextLabelCustom(title: "Peitoral")
        return label
    }()
    
    lazy var chestMeasurementTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var abdominalLabel: UILabel = {
        let label = TextLabelCustom(title: "Abdômen")
        return label
    }()
    
    lazy var abdominalTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var measuredThighLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa Direita")
        return label
    }()
    
    lazy var measuredThighTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var measureLeftThighLabel: UILabel = {
        let label = TextLabelCustom(title: "Coxa Esquerda")
        return label
    }()
    
    lazy var measureLeftThighTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var measuredCalfLabel: UILabel = {
        let label = TextLabelCustom(title: "Paturrilha D")
        return label
    }()
    
    lazy var easuredCalfTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var pmeasureLeftCalfLabel: UILabel = {
        let label = TextLabelCustom(title: "Panturrilha E")
        return label
    }()
    
    lazy var pmeasureLeftCalfTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "Ex:10")
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var saveDataButton: UIButton = {
        let button = ButtonCustom(title: "SALVAR")
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .secondaryColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AssessmentCellScreen: ViewCode {
    func configElements() {
        [foldsLabel, rightLabel, leftLabel, tricepsLabel, tricepsTextField, tricepsLeftLabel, tricepsLeftTextField, subscabularLabel, subscabularTextField, subscapularLeftLabel, subscapularLeftTextField, middleAssistantLabel, middleAssistantTextField, middleAssistantLeftLabel, middleAssistantLeftTextField, bicepsLabel,bicepsTextField, bicepsLeftLabel, bicepsLeftTextField, breastplateLabel, breastplateTextField, breastplateLeftLabel, breastplateLeftTextField, abdomenLabel, abdomenTextField, abdomenLeftLabel, abdomenLeftTextField, thighLabel, thighTextField, thighLeftLabel, thighLeftTextField, suprailiacLabel, suprailiacTextField, suprailiacLeftLabel, suprailiacLeftTextField, supraspinalLabel, supraspinalTextField, supraspinalLeftLabel, supraspinalLeftTextField, calfLabel, calfTextField, calfLeftLabel, calfLeftTextField, measurementsLabel, armLabel, armTextField, contractedArmLabel, contractedArmTextField, armLeftLabel, armLeftTextField, contractedLeftArmLabel, contractedLeftArmTextField, chestMeasurementLabel, chestMeasurementTextField, abdominalLabel, abdominalTextField, measuredThighLabel, measuredThighTextField, measureLeftThighLabel, measureLeftThighTextField, measuredCalfLabel,easuredCalfTextField, pmeasureLeftCalfLabel, pmeasureLeftCalfTextField, saveDataButton].forEach({addSubview($0)})
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            foldsLabel.topAnchor.constraint(equalTo: topAnchor),
            foldsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            rightLabel.topAnchor.constraint(equalTo: foldsLabel.bottomAnchor,constant: 35),
            rightLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 70),
            
            leftLabel.topAnchor.constraint(equalTo: foldsLabel.bottomAnchor,constant: 35),
            leftLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -65),
            
            tricepsLabel.topAnchor.constraint(equalTo: rightLabel.bottomAnchor,constant: 20),
            tricepsLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            tricepsTextField.centerYAnchor.constraint(equalTo: tricepsLabel.centerYAnchor),
            tricepsTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 126),
            tricepsTextField.widthAnchor.constraint(equalToConstant: 60),
            
            bicepsLabel.topAnchor.constraint(equalTo: tricepsLabel.bottomAnchor,constant: 20),
            bicepsLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            bicepsTextField.centerYAnchor.constraint(equalTo: bicepsLabel.centerYAnchor),
            bicepsTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            bicepsTextField.widthAnchor.constraint(equalToConstant: 60),
            
            breastplateLabel.topAnchor.constraint(equalTo: bicepsLabel.bottomAnchor,constant: 20),
            breastplateLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            breastplateTextField.centerYAnchor.constraint(equalTo: breastplateLabel.centerYAnchor),
            breastplateTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            breastplateTextField.widthAnchor.constraint(equalToConstant: 60),
            
            suprailiacLabel.topAnchor.constraint(equalTo: breastplateLabel.bottomAnchor,constant: 20),
            suprailiacLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            suprailiacTextField.centerYAnchor.constraint(equalTo: suprailiacLabel.centerYAnchor),
            suprailiacTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            suprailiacTextField.widthAnchor.constraint(equalToConstant: 60),
            
            middleAssistantLabel.topAnchor.constraint(equalTo: suprailiacLabel.bottomAnchor,constant: 20),
            middleAssistantLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            middleAssistantTextField.centerYAnchor.constraint(equalTo: middleAssistantLabel.centerYAnchor),
            middleAssistantTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            middleAssistantTextField.widthAnchor.constraint(equalToConstant: 60),
            
            supraspinalLabel.topAnchor.constraint(equalTo: middleAssistantLabel.bottomAnchor,constant: 20),
            supraspinalLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            supraspinalTextField.centerYAnchor.constraint(equalTo: supraspinalLabel.centerYAnchor),
            supraspinalTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            supraspinalTextField.widthAnchor.constraint(equalToConstant: 60),
            
            subscabularLabel.topAnchor.constraint(equalTo: supraspinalLabel.bottomAnchor,constant: 20),
            subscabularLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            subscabularTextField.centerYAnchor.constraint(equalTo: subscabularLabel.centerYAnchor),
            subscabularTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            subscabularTextField.widthAnchor.constraint(equalToConstant: 60),
            
            abdomenLabel.topAnchor.constraint(equalTo: subscabularLabel.bottomAnchor,constant: 20),
            abdomenLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            abdomenTextField.centerYAnchor.constraint(equalTo: abdomenLabel.centerYAnchor),
            abdomenTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            abdomenTextField.widthAnchor.constraint(equalToConstant: 60),
            
            thighLabel.topAnchor.constraint(equalTo: abdomenLabel.bottomAnchor,constant: 20),
            thighLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            thighTextField.centerYAnchor.constraint(equalTo: thighLabel.centerYAnchor),
            thighTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            thighTextField.widthAnchor.constraint(equalToConstant: 60),
            
            calfLabel.topAnchor.constraint(equalTo: thighLabel.bottomAnchor,constant: 20),
            calfLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            calfTextField.centerYAnchor.constraint(equalTo: calfLabel.centerYAnchor),
            calfTextField.leadingAnchor.constraint(equalTo: tricepsTextField.leadingAnchor),
            calfTextField.widthAnchor.constraint(equalToConstant: 60),
            
            tricepsLeftLabel.topAnchor.constraint(equalTo: leftLabel.bottomAnchor,constant: 20),
            tricepsLeftLabel.leadingAnchor.constraint(equalTo: tricepsTextField.trailingAnchor,constant: 32.5),
            
            tricepsLeftTextField.centerYAnchor.constraint(equalTo: tricepsLeftLabel.centerYAnchor),
            tricepsLeftTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            tricepsLeftTextField.widthAnchor.constraint(equalToConstant: 60),
            
            bicepsLeftLabel.leadingAnchor.constraint(equalTo: tricepsLeftLabel.leadingAnchor),
            bicepsLeftLabel.topAnchor.constraint(equalTo: tricepsLeftLabel.bottomAnchor,constant: 20),
            
            bicepsLeftTextField.centerYAnchor.constraint(equalTo: bicepsLeftLabel.centerYAnchor),
            bicepsLeftTextField.trailingAnchor.constraint(equalTo: tricepsLeftTextField.trailingAnchor),
            bicepsLeftTextField.widthAnchor.constraint(equalToConstant: 60),
            
            breastplateLeftLabel.leadingAnchor.constraint(equalTo: tricepsLeftLabel.leadingAnchor),
            breastplateLeftLabel.topAnchor.constraint(equalTo: bicepsLeftLabel.bottomAnchor,constant: 20),
            
            breastplateLeftTextField.centerYAnchor.constraint(equalTo: breastplateLeftLabel.centerYAnchor),
            breastplateLeftTextField.trailingAnchor.constraint(equalTo: tricepsLeftTextField.trailingAnchor),
            breastplateLeftTextField.widthAnchor.constraint(equalToConstant: 60),
            
            suprailiacLeftLabel.leadingAnchor.constraint(equalTo: tricepsLeftLabel.leadingAnchor),
            suprailiacLeftLabel.topAnchor.constraint(equalTo: breastplateLeftLabel.bottomAnchor,constant: 20),
            
            suprailiacLeftTextField.centerYAnchor.constraint(equalTo: suprailiacLeftLabel.centerYAnchor),
            suprailiacLeftTextField.trailingAnchor.constraint(equalTo: tricepsLeftTextField.trailingAnchor),
            suprailiacLeftTextField.widthAnchor.constraint(equalToConstant: 60),
            
            middleAssistantLeftLabel.leadingAnchor.constraint(equalTo: tricepsLeftLabel.leadingAnchor),
            middleAssistantLeftLabel.topAnchor.constraint(equalTo: suprailiacLeftLabel.bottomAnchor,constant: 20),
            
            middleAssistantLeftTextField.centerYAnchor.constraint(equalTo: middleAssistantLeftLabel.centerYAnchor),
            middleAssistantLeftTextField.trailingAnchor.constraint(equalTo: tricepsLeftTextField.trailingAnchor),
            middleAssistantLeftTextField.widthAnchor.constraint(equalToConstant: 60),
            
            supraspinalLeftLabel.leadingAnchor.constraint(equalTo: tricepsLeftLabel.leadingAnchor),
            supraspinalLeftLabel.topAnchor.constraint(equalTo: middleAssistantLeftLabel.bottomAnchor,constant: 20),
            
            supraspinalLeftTextField.centerYAnchor.constraint(equalTo: supraspinalLeftLabel.centerYAnchor),
            supraspinalLeftTextField.trailingAnchor.constraint(equalTo: tricepsLeftTextField.trailingAnchor),
            supraspinalLeftTextField.widthAnchor.constraint(equalToConstant: 60),
            
            subscapularLeftLabel.leadingAnchor.constraint(equalTo: tricepsLeftLabel.leadingAnchor),
            subscapularLeftLabel.topAnchor.constraint(equalTo: supraspinalLeftLabel.bottomAnchor,constant: 20),
            
            subscapularLeftTextField.centerYAnchor.constraint(equalTo: subscapularLeftLabel.centerYAnchor),
            subscapularLeftTextField.trailingAnchor.constraint(equalTo: tricepsLeftTextField.trailingAnchor),
            subscapularLeftTextField.widthAnchor.constraint(equalToConstant: 60),
            
            abdomenLeftLabel.leadingAnchor.constraint(equalTo: tricepsLeftLabel.leadingAnchor),
            abdomenLeftLabel.topAnchor.constraint(equalTo: subscapularLeftLabel.bottomAnchor,constant: 20),
            
            abdomenLeftTextField.centerYAnchor.constraint(equalTo: abdomenLeftLabel.centerYAnchor),
            abdomenLeftTextField.trailingAnchor.constraint(equalTo: tricepsLeftTextField.trailingAnchor),
            abdomenLeftTextField.widthAnchor.constraint(equalToConstant: 60),
            
            thighLeftLabel.leadingAnchor.constraint(equalTo: tricepsLeftLabel.leadingAnchor),
            thighLeftLabel.topAnchor.constraint(equalTo: abdomenLeftLabel.bottomAnchor,constant: 20),
            
            thighLeftTextField.centerYAnchor.constraint(equalTo: thighLeftLabel.centerYAnchor),
            thighLeftTextField.trailingAnchor.constraint(equalTo: tricepsLeftTextField.trailingAnchor),
            thighLeftTextField.widthAnchor.constraint(equalToConstant: 60),
            
            calfLeftLabel.leadingAnchor.constraint(equalTo: tricepsLeftLabel.leadingAnchor),
            calfLeftLabel.topAnchor.constraint(equalTo: thighLeftLabel.bottomAnchor,constant: 20),
            
            calfLeftTextField.centerYAnchor.constraint(equalTo: calfLeftLabel.centerYAnchor),
            calfLeftTextField.trailingAnchor.constraint(equalTo: tricepsLeftTextField.trailingAnchor),
            calfLeftTextField.widthAnchor.constraint(equalToConstant: 60),

            measurementsLabel.topAnchor.constraint(equalTo: calfLabel.bottomAnchor,constant: 35),
            measurementsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            chestMeasurementLabel.topAnchor.constraint(equalTo: measurementsLabel.bottomAnchor,constant: 20),
            chestMeasurementLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            chestMeasurementTextField.centerYAnchor.constraint(equalTo: chestMeasurementLabel.centerYAnchor),
            chestMeasurementTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            chestMeasurementTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 85),
            
            abdominalLabel.topAnchor.constraint(equalTo: chestMeasurementLabel.bottomAnchor,constant: 20),
            abdominalLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            abdominalTextField.centerYAnchor.constraint(equalTo: abdominalLabel.centerYAnchor),
            abdominalTextField.leadingAnchor.constraint(equalTo: chestMeasurementTextField.leadingAnchor),
            abdominalTextField.trailingAnchor.constraint(equalTo: chestMeasurementTextField.trailingAnchor),
            
            armLabel.topAnchor.constraint(equalTo: abdominalLabel.bottomAnchor,constant: 20),
            armLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            armTextField.centerYAnchor.constraint(equalTo: armLabel.centerYAnchor),
            armTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 135),
            armTextField.widthAnchor.constraint(equalToConstant: 50),
            
            armLeftLabel.topAnchor.constraint(equalTo: abdominalLabel.bottomAnchor,constant: 20),
            armLeftLabel.leadingAnchor.constraint(equalTo: tricepsTextField.trailingAnchor,constant: 20),
            
            armLeftTextField.centerYAnchor.constraint(equalTo: armLeftLabel.centerYAnchor),
            armLeftTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            armLeftTextField.widthAnchor.constraint(equalToConstant: 50),
            
            contractedArmLabel.topAnchor.constraint(equalTo: armLabel.bottomAnchor,constant: 20),
            contractedArmLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            contractedArmTextField.centerYAnchor.constraint(equalTo: contractedArmLabel.centerYAnchor),
            contractedArmTextField.leadingAnchor.constraint(equalTo: armTextField.leadingAnchor),
            contractedArmTextField.widthAnchor.constraint(equalToConstant: 50),
            
            contractedLeftArmLabel.topAnchor.constraint(equalTo: armLabel.bottomAnchor,constant: 20),
            contractedLeftArmLabel.leadingAnchor.constraint(equalTo: armLeftLabel.leadingAnchor),
            
            contractedLeftArmTextField.centerYAnchor.constraint(equalTo: contractedLeftArmLabel.centerYAnchor),
            contractedLeftArmTextField.trailingAnchor.constraint(equalTo: armLeftTextField.trailingAnchor),
            contractedLeftArmTextField.widthAnchor.constraint(equalToConstant: 50),
            
            measuredThighLabel.topAnchor.constraint(equalTo: contractedArmLabel.bottomAnchor,constant: 20),
            measuredThighLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),
            
            measuredThighTextField.centerYAnchor.constraint(equalTo: measuredThighLabel.centerYAnchor),
            measuredThighTextField.leadingAnchor.constraint(equalTo: armTextField.leadingAnchor),
            measuredThighTextField.widthAnchor.constraint(equalToConstant: 50),
            
            measureLeftThighLabel.topAnchor.constraint(equalTo: contractedArmLabel.bottomAnchor,constant: 20),
            measureLeftThighLabel.leadingAnchor.constraint(equalTo: armLeftLabel.leadingAnchor),
            
            measureLeftThighTextField.centerYAnchor.constraint(equalTo: measureLeftThighLabel.centerYAnchor),
            measureLeftThighTextField.trailingAnchor.constraint(equalTo: armLeftTextField.trailingAnchor),
            measureLeftThighTextField.widthAnchor.constraint(equalToConstant: 50),
            
            measuredCalfLabel.topAnchor.constraint(equalTo: measuredThighLabel.bottomAnchor,constant: 20),
            measuredCalfLabel.leadingAnchor.constraint(equalTo: tricepsLabel.leadingAnchor),

            easuredCalfTextField.centerYAnchor.constraint(equalTo: measuredCalfLabel.centerYAnchor),
            easuredCalfTextField.leadingAnchor.constraint(equalTo: armTextField.leadingAnchor),
            easuredCalfTextField.widthAnchor.constraint(equalToConstant: 50),

            pmeasureLeftCalfLabel.topAnchor.constraint(equalTo: measuredThighLabel.bottomAnchor,constant: 20),
            pmeasureLeftCalfLabel.leadingAnchor.constraint(equalTo: armLeftLabel.leadingAnchor),

            pmeasureLeftCalfTextField.centerYAnchor.constraint(equalTo: pmeasureLeftCalfLabel.centerYAnchor),
            pmeasureLeftCalfTextField.trailingAnchor.constraint(equalTo: armLeftTextField.trailingAnchor),
            pmeasureLeftCalfTextField.widthAnchor.constraint(equalToConstant: 50),
           
            saveDataButton.topAnchor.constraint(equalTo: easuredCalfTextField.bottomAnchor, constant: 35),
            saveDataButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            saveDataButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            saveDataButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
