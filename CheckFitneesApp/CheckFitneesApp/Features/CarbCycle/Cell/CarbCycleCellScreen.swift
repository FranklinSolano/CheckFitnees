//
//  CicloCarboidratosCellScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

 final class CarbCycleCellScreen: UIView {
    
    lazy var carbohydratesLabel: UILabel = {
          let label = TextLabelCustom(title: "Carboitrados:")
          return label
      }()
  
      lazy var carbohydratesTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "Ex: 330")
          tf.textAlignment = .center
          return tf
      }()
  
      lazy var proteinLabel: UILabel = {
          let label = TextLabelCustom(title: "Proteina:")
          return label
      }()
  
      lazy var proteinTextField: UITextField = {
          let textField = TextFieldCustom(placeholder: "Ex: 180")
          textField.textAlignment = .center
          return textField
      }()
  
      lazy var fatLabel: UILabel = {
          let label = TextLabelCustom(title: "Gordura:")
          return label
      }()
  
      lazy var fatTextField: UITextField = {
          let textField = TextFieldCustom(placeholder: "Ex: 70")
          textField.textAlignment = .center
          return textField
      }()
  
      lazy var averageKcalLabel: UILabel = {
          let label = TextLabelCustom(title: "Sua media total de Kcal é 3260")
          label.textAlignment = .center
          label.font = UIFont(name: "Roboto-Regular", size: 18)
          label.textColor = .primaryColor
          return label
      }()
  
      lazy var protocolLabel: UILabel = {
          let label = TextLabelCustom(title: "Selecione um protocolo:")
          label.font = UIFont(name: "Roboto-Bold", size: 18)
          return label
      }()
  
      lazy var twoLoxButton: UIButton = {
          let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
          button.translatesAutoresizingMaskIntoConstraints = false
          button.setTitle("2 lox 1 high", for: .normal)
          button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 18)
          button.setTitleColor(UIColor.primaryColor, for: .normal)
          button.addTarget(self, action: #selector(tappedTwoLoxButton), for: .touchUpInside)
          return button
      }()
  
      lazy var threeLoxButton: UIButton = {
          let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
          button.translatesAutoresizingMaskIntoConstraints = false
          button.setTitle("3 lox 1 high", for: .normal)
          button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 18)
          button.setTitleColor(UIColor.primaryColor , for: .normal)
          button.addTarget(self, action: #selector(tappedThreeeLokButton), for: .touchUpInside)
          return button
      }()
  
      lazy var forLoxButton: UIButton = {
          let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
          button.translatesAutoresizingMaskIntoConstraints = false
          button.setTitle("4 lox 1 high", for: .normal)
          button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 18)
          button.setTitleColor(UIColor.primaryColor , for: .normal)
          button.addTarget(self, action: #selector(tappedForLoxButton), for: .touchUpInside)
          return button
      }()
  
      lazy var lineView: UIView = {
          let view = UIView()
          view.translatesAutoresizingMaskIntoConstraints = false
          view.backgroundColor = UIColor.primaryColor
          return view
      }()
  
      lazy var line2View: UIView = {
          let view = UIView()
          view.translatesAutoresizingMaskIntoConstraints = false
          view.backgroundColor = .clear
          return view
      }()
  
      lazy var lineView3: UIView = {
          let view = UIView()
          view.translatesAutoresizingMaskIntoConstraints = false
          view.backgroundColor = .clear
          return view
      }()
  
      lazy var macronutrientsLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "MacroNutrientes para os dias de carbo baixo (lox)")
          label.font = UIFont(name: "Roboto-Medium", size: 18)
          label.textAlignment = .center
          label.numberOfLines = 0
          return label
      }()
  
      lazy var carbohydratesLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "Carboitrados:")
          return label
      }()
  
      lazy var carbohydratesLoxTextField: UITextField = {
          let textField = TextFieldCustom(placeholder: "")
          textField.text = "182g"
          textField.textAlignment = .center
          textField.isEnabled = false
          return textField
      }()
  
      lazy var proteinLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "Proteina:")
          return label
      }()
  
      lazy var proteinLoxTextField: UITextField = {
          let textField = TextFieldCustom(placeholder: "")
          textField.text = "193g"
          textField.textAlignment = .center
          textField.isEnabled = false
          return textField
      }()
  
      lazy var fatLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "Gordura:")
          return label
      }()
  
      lazy var fatLoxTextField: UITextField = {
          let textField = TextFieldCustom(placeholder: "")
          textField.text = "89g"
          textField.textAlignment = .center
          textField.isEnabled = false
          return textField
      }()
  
      lazy var averageKcalLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "Sua media total de Kcal é 2821")
          label.textAlignment = .center
          label.font = UIFont(name: "Roboto-Regular", size: 18)
          label.textColor = .primaryColor
          return label
      }()
  
      lazy var macronutrientsHighLabel: UILabel = {
          let label = TextLabelCustom(title: "MacroNutrientes para os dias de carbo alto (high)")
          label.font = UIFont(name: "Roboto-Medium", size: 18)
          label.textAlignment = .center
          label.numberOfLines = 0
          return label
      }()
  
      lazy var carbohydratesHighLabel: UILabel = {
          let label = TextLabelCustom(title: "Carboitrados:")
          return label
      }()
  
      lazy var carbohydratesHighTextField: UITextField = {
          let textField = TextFieldCustom(placeholder: "")
          textField.text = "626g"
          textField.textAlignment = .center
          textField.isEnabled = false
          return textField
      }()
  
      lazy var proteinHighLabel: UILabel = {
          let label = TextLabelCustom(title: "Proteina:")
          return label
      }()
  
      lazy var proteinHighTextField: UITextField = {
          let textField = TextFieldCustom(placeholder: "")
          textField.text = "154g"
          textField.textAlignment = .center
          textField.isEnabled = false
          return textField
      }()
  
      lazy var fatHighLabel: UILabel = {
          let label = TextLabelCustom(title: "Gordura:")
          return label
      }()
  
      lazy var fatHighTextField: UITextField = {
          let textField = TextFieldCustom(placeholder: "")
          textField.text = "62g"
          textField.textAlignment = .center
          textField.isEnabled = false
          return textField
      }()
  
      lazy var averageKcalHighLabel: UILabel = {
          let label = TextLabelCustom(title: "Sua media total de Kcal é 4138")
          label.textAlignment = .center
          label.font = UIFont(name: "Roboto-Regular", size: 18)
          label.textColor = .primaryColor
          return label
      }()
      

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .secondaryColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTextField(delegate: UITextFieldDelegate){
        carbohydratesTextField.delegate = delegate
        proteinTextField.delegate = delegate
        fatTextField.delegate = delegate
    }
    
    @objc private func tappedTwoLoxButton(){
        lineView.backgroundColor = .primaryColor
        line2View.backgroundColor = .clear
        lineView3.backgroundColor = .clear
    }

    @objc private func tappedThreeeLokButton(){
        lineView.backgroundColor = .clear
        line2View.backgroundColor = .primaryColor
        lineView3.backgroundColor = .clear    }

    @objc private func tappedForLoxButton(){
        lineView.backgroundColor = .clear
        line2View.backgroundColor = .clear
        lineView3.backgroundColor = .primaryColor
    }
    
}

//MARK: - ViewCode

extension CarbCycleCellScreen: ViewCode {
    func configElements() {
        [carbohydratesLabel, carbohydratesTextField, proteinLabel, proteinTextField, fatLabel, fatTextField, averageKcalLabel, protocolLabel, twoLoxButton, threeLoxButton, forLoxButton, lineView, line2View, lineView3, macronutrientsLoxLabel, carbohydratesLoxLabel, carbohydratesLoxTextField, proteinLoxLabel, proteinLoxTextField, fatLoxLabel, fatLoxTextField, averageKcalLoxLabel, macronutrientsHighLabel, carbohydratesHighLabel, carbohydratesHighTextField, proteinHighLabel, proteinHighTextField, fatHighLabel, fatHighTextField, averageKcalHighLabel].forEach({addSubview($0)})
        
    }
    
    func configConstraint() {
            NSLayoutConstraint.activate([
                
                carbohydratesLabel.topAnchor.constraint(equalTo: topAnchor,constant: 30),
                carbohydratesLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),

                carbohydratesTextField.centerYAnchor.constraint(equalTo: carbohydratesLabel.centerYAnchor),
                carbohydratesTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                carbohydratesTextField.leadingAnchor.constraint(equalTo: carbohydratesLabel.trailingAnchor,constant: 8),


                proteinLabel.topAnchor.constraint(equalTo: carbohydratesLabel.bottomAnchor,constant: 17),
                proteinLabel.leadingAnchor.constraint(equalTo: carbohydratesLabel.leadingAnchor),

                proteinTextField.centerYAnchor.constraint(equalTo: proteinLabel.centerYAnchor),
                proteinTextField.leadingAnchor.constraint(equalTo: proteinLabel.trailingAnchor,constant: 8),
                proteinTextField.trailingAnchor.constraint(equalTo: carbohydratesTextField.trailingAnchor),


                fatLabel.topAnchor.constraint(equalTo: proteinTextField.bottomAnchor,constant: 17),
                fatLabel.leadingAnchor.constraint(equalTo: proteinLabel.leadingAnchor),

                fatTextField.centerYAnchor.constraint(equalTo: fatLabel.centerYAnchor),
                fatTextField.leadingAnchor.constraint(equalTo: fatLabel.trailingAnchor,constant: 8),
                fatTextField.trailingAnchor.constraint(equalTo: carbohydratesTextField.trailingAnchor),

                averageKcalLabel.topAnchor.constraint(equalTo: fatTextField.bottomAnchor,constant: 20),
                averageKcalLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

                protocolLabel.topAnchor.constraint(equalTo: averageKcalLabel.bottomAnchor,constant: 40),
                protocolLabel.leadingAnchor.constraint(equalTo: carbohydratesLabel.leadingAnchor),

                threeLoxButton.topAnchor.constraint(equalTo: protocolLabel.bottomAnchor,constant: 25),
                threeLoxButton.centerXAnchor.constraint(equalTo: centerXAnchor),

                twoLoxButton.centerYAnchor.constraint(equalTo: threeLoxButton.centerYAnchor),
                twoLoxButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 35),

                forLoxButton.centerYAnchor.constraint(equalTo: threeLoxButton.centerYAnchor),
                forLoxButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -35),

                lineView.topAnchor.constraint(equalTo: twoLoxButton.bottomAnchor),
                lineView.leadingAnchor.constraint(equalTo: twoLoxButton.leadingAnchor),
                lineView.heightAnchor.constraint(equalToConstant: 2),
                lineView.widthAnchor.constraint(equalToConstant: 100),

                line2View.topAnchor.constraint(equalTo: threeLoxButton.bottomAnchor),
                line2View.centerXAnchor.constraint(equalTo: threeLoxButton.centerXAnchor),
                line2View.heightAnchor.constraint(equalToConstant: 2),
                line2View.widthAnchor.constraint(equalToConstant: 100),

                lineView3.topAnchor.constraint(equalTo: forLoxButton.bottomAnchor),
                lineView3.trailingAnchor.constraint(equalTo: forLoxButton.trailingAnchor),
                lineView3.heightAnchor.constraint(equalToConstant: 2),
                lineView3.widthAnchor.constraint(equalToConstant: 100),

                macronutrientsLoxLabel.topAnchor.constraint(equalTo: line2View.bottomAnchor,constant: 50),
                macronutrientsLoxLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                macronutrientsLoxLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),

                carbohydratesLoxLabel.topAnchor.constraint(equalTo: macronutrientsLoxLabel.bottomAnchor,constant: 30),
                carbohydratesLoxLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),

                carbohydratesLoxTextField.centerYAnchor.constraint(equalTo: carbohydratesLoxLabel.centerYAnchor),
                carbohydratesLoxTextField.leadingAnchor.constraint(equalTo: carbohydratesLoxLabel.trailingAnchor,constant: 8),
                carbohydratesLoxTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),

                proteinLoxLabel.topAnchor.constraint(equalTo: carbohydratesLoxLabel.bottomAnchor,constant: 17),
                proteinLoxLabel.leadingAnchor.constraint(equalTo: carbohydratesLoxLabel.leadingAnchor),

                proteinLoxTextField.centerYAnchor.constraint(equalTo: proteinLoxLabel.centerYAnchor),
                proteinLoxTextField.leadingAnchor.constraint(equalTo: proteinLoxLabel.trailingAnchor,constant: 8),
                proteinLoxTextField.trailingAnchor.constraint(equalTo: carbohydratesLoxTextField.trailingAnchor),


                fatLoxLabel.topAnchor.constraint(equalTo: proteinLoxTextField.bottomAnchor,constant: 17),
                fatLoxLabel.leadingAnchor.constraint(equalTo: proteinLoxLabel.leadingAnchor),

                fatLoxTextField.centerYAnchor.constraint(equalTo: fatLoxLabel.centerYAnchor),
                fatLoxTextField.leadingAnchor.constraint(equalTo: fatLoxLabel.trailingAnchor,constant: 8),
                fatLoxTextField.trailingAnchor.constraint(equalTo: carbohydratesLoxTextField.trailingAnchor),

                averageKcalLoxLabel.topAnchor.constraint(equalTo: fatLoxTextField.bottomAnchor,constant: 20),
                averageKcalLoxLabel.centerXAnchor.constraint(equalTo: centerXAnchor),


                macronutrientsHighLabel.topAnchor.constraint(equalTo: averageKcalLoxLabel.bottomAnchor,constant: 70),
                macronutrientsHighLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                macronutrientsHighLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),

                carbohydratesHighLabel.topAnchor.constraint(equalTo: macronutrientsHighLabel.bottomAnchor,constant: 30),
                carbohydratesHighLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),

                carbohydratesHighTextField.centerYAnchor.constraint(equalTo: carbohydratesHighLabel.centerYAnchor),
                carbohydratesHighTextField.leadingAnchor.constraint(equalTo: carbohydratesHighLabel.trailingAnchor,constant: 8),
                carbohydratesHighTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),

                proteinHighLabel.topAnchor.constraint(equalTo: carbohydratesHighLabel.bottomAnchor,constant: 17),
                proteinHighLabel.leadingAnchor.constraint(equalTo: carbohydratesHighLabel.leadingAnchor),

                proteinHighTextField.centerYAnchor.constraint(equalTo: proteinHighLabel.centerYAnchor),
                proteinHighTextField.leadingAnchor.constraint(equalTo: proteinHighLabel.trailingAnchor,constant: 8),
                proteinHighTextField.trailingAnchor.constraint(equalTo: carbohydratesHighTextField.trailingAnchor),


                fatHighLabel.topAnchor.constraint(equalTo: proteinHighLabel.bottomAnchor,constant: 17),
                fatHighLabel.leadingAnchor.constraint(equalTo: proteinHighLabel.leadingAnchor),

                fatHighTextField.centerYAnchor.constraint(equalTo: fatHighLabel.centerYAnchor),
                fatHighTextField.leadingAnchor.constraint(equalTo: fatHighLabel.trailingAnchor,constant: 8),
                fatHighTextField.trailingAnchor.constraint(equalTo: carbohydratesHighTextField.trailingAnchor),

                averageKcalHighLabel.topAnchor.constraint(equalTo: fatHighTextField.bottomAnchor,constant: 20),
                averageKcalHighLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
    }
}
