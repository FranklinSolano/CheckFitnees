//
//  CicloCarboidratosCellScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

class CicloCarboidratosCellScreen: UIView {
    
    lazy var carboidratoslLabel: UILabel = {
          let label = TextLabelCustom(title: "Carboitrados:")
          return label
      }()
  
      lazy var carboidratosTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "Ex: 330")
          tf.textAlignment = .center
          return tf
      }()
  
      lazy var proteinaLabel: UILabel = {
          let label = TextLabelCustom(title: "Proteina:")
          return label
      }()
  
      lazy var proteinaTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "Ex: 180")
          tf.textAlignment = .center
          return tf
      }()
  
      lazy var gorduraLabel: UILabel = {
          let label = TextLabelCustom(title: "Gordura:")
          return label
      }()
  
      lazy var gorduraTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "Ex: 70")
          tf.textAlignment = .center
          return tf
      }()
  
      lazy var kcalMediaLabel: UILabel = {
          let label = TextLabelCustom(title: "Sua media total de Kcal é 3260")
          label.textAlignment = .center
          label.font = UIFont(name: "Roboto-Regular", size: 18)
          label.textColor = .corOne
          return label
      }()
  
      lazy var protocoloLabel: UILabel = {
          let label = TextLabelCustom(title: "Selecione um protocolo:")
          label.font = UIFont(name: "Roboto-Bold", size: 18)
          return label
      }()
  
      lazy var twoLoxButton: UIButton = {
          let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
          button.translatesAutoresizingMaskIntoConstraints = false
          button.setTitle("2 lox 1 high", for: .normal)
          button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 18)
          button.setTitleColor(UIColor.corOne, for: .normal)
          button.addTarget(self, action: #selector(tappedTwoLoxButton), for: .touchUpInside)
          return button
      }()
  
      lazy var threeLoxButton: UIButton = {
          let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
          button.translatesAutoresizingMaskIntoConstraints = false
          button.setTitle("3 lox 1 high", for: .normal)
          button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 18)
          button.setTitleColor(UIColor.corOne , for: .normal)
          button.addTarget(self, action: #selector(tappedThreeeLokButton), for: .touchUpInside)
          return button
      }()
  
      lazy var forLoxButton: UIButton = {
          let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 33))
          button.translatesAutoresizingMaskIntoConstraints = false
          button.setTitle("4 lox 1 high", for: .normal)
          button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 18)
          button.setTitleColor(UIColor.corOne , for: .normal)
          button.addTarget(self, action: #selector(tappedForLoxButton), for: .touchUpInside)
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
  
      lazy var lineView3: UIView = {
          let view = UIView()
          view.translatesAutoresizingMaskIntoConstraints = false
          view.backgroundColor = .clear
          return view
      }()
  
      lazy var macronutrienteLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "MacroNutrientes para os dias de carbo baixo (lox)")
          label.font = UIFont(name: "Roboto-Medium", size: 18)
          label.textAlignment = .center
          label.numberOfLines = 0
          return label
      }()
  
      lazy var carboidratoslLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "Carboitrados:")
          return label
      }()
  
      lazy var carboidratosLoxTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "")
          tf.text = "182g"
          tf.textAlignment = .center
          tf.isEnabled = false
          return tf
      }()
  
      lazy var proteinaLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "Proteina:")
          return label
      }()
  
      lazy var proteinaLoxTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "")
          tf.text = "193g"
          tf.textAlignment = .center
          tf.isEnabled = false
          return tf
      }()
  
      lazy var gorduraLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "Gordura:")
          return label
      }()
  
      lazy var gorduraLoxTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "")
          tf.text = "89g"
          tf.textAlignment = .center
          tf.isEnabled = false
          return tf
      }()
  
      lazy var kcalMediaLoxLabel: UILabel = {
          let label = TextLabelCustom(title: "Sua media total de Kcal é 2821")
          label.textAlignment = .center
          label.font = UIFont(name: "Roboto-Regular", size: 18)
          label.textColor = .corOne
          return label
      }()
  
      lazy var macronutrienteHighLabel: UILabel = {
          let label = TextLabelCustom(title: "MacroNutrientes para os dias de carbo alto (high)")
          label.font = UIFont(name: "Roboto-Medium", size: 18)
          label.textAlignment = .center
          label.numberOfLines = 0
          return label
      }()
  
      lazy var carboidratoslHighLabel: UILabel = {
          let label = TextLabelCustom(title: "Carboitrados:")
          return label
      }()
  
      lazy var carboidratosHighTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "")
          tf.text = "626g"
          tf.textAlignment = .center
          tf.isEnabled = false
  
          return tf
      }()
  
      lazy var proteinaHighLabel: UILabel = {
          let label = TextLabelCustom(title: "Proteina:")
          return label
      }()
  
      lazy var proteinaHighTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "")
          tf.text = "154g"
          tf.textAlignment = .center
          tf.isEnabled = false
          return tf
      }()
  
      lazy var gorduraHighLabel: UILabel = {
          let label = TextLabelCustom(title: "Gordura:")
          return label
      }()
  
      lazy var gorduraHighTextField: UITextField = {
          let tf = TextFieldCustom(placeholder: "")
          tf.text = "62g"
          tf.textAlignment = .center
          tf.isEnabled = false
          return tf
      }()
  
      lazy var kcalMediaHighLabel: UILabel = {
          let label = TextLabelCustom(title: "Sua media total de Kcal é 4138")
          label.textAlignment = .center
          label.font = UIFont(name: "Roboto-Regular", size: 18)
          label.textColor = .corOne
          return label
      }()
      

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .corTwo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTextField(delegate: UITextFieldDelegate){
        carboidratosTextField.delegate = delegate
        proteinaTextField.delegate = delegate
        gorduraTextField.delegate = delegate
    }
    
    @objc private func tappedTwoLoxButton(){
        lineView.backgroundColor = .corOne
        line2View.backgroundColor = .clear
        lineView3.backgroundColor = .clear
    }

    @objc private func tappedThreeeLokButton(){
        lineView.backgroundColor = .clear
        line2View.backgroundColor = .corOne
        lineView3.backgroundColor = .clear    }

    @objc private func tappedForLoxButton(){
        lineView.backgroundColor = .clear
        line2View.backgroundColor = .clear
        lineView3.backgroundColor = .corOne
    }
    
}

//MARK: - ViewCode

extension CicloCarboidratosCellScreen: ViewCode {
    func configElements() {
            let views: [UIView] = [carboidratoslLabel,carboidratosTextField,proteinaLabel,proteinaTextField,gorduraLabel,gorduraTextField,kcalMediaLabel,protocoloLabel,twoLoxButton,threeLoxButton,forLoxButton,lineView,line2View,lineView3,macronutrienteLoxLabel,carboidratoslLoxLabel,carboidratosLoxTextField,proteinaLoxLabel,proteinaLoxTextField,gorduraLoxLabel,gorduraLoxTextField,kcalMediaLoxLabel,macronutrienteHighLabel,carboidratoslHighLabel,carboidratosHighTextField,proteinaHighLabel,proteinaHighTextField,gorduraHighLabel,gorduraHighTextField,kcalMediaHighLabel]
        
        for view in views {
            addSubview(view)
        }
        
    }
    
    func configConstraint() {
            NSLayoutConstraint.activate([
                
                carboidratoslLabel.topAnchor.constraint(equalTo: topAnchor,constant: 30),
                carboidratoslLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),

                carboidratosTextField.centerYAnchor.constraint(equalTo: carboidratoslLabel.centerYAnchor),
                carboidratosTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                carboidratosTextField.leadingAnchor.constraint(equalTo: carboidratoslLabel.trailingAnchor,constant: 8),


                proteinaLabel.topAnchor.constraint(equalTo: carboidratoslLabel.bottomAnchor,constant: 17),
                proteinaLabel.leadingAnchor.constraint(equalTo: carboidratoslLabel.leadingAnchor),

                proteinaTextField.centerYAnchor.constraint(equalTo: proteinaLabel.centerYAnchor),
                proteinaTextField.leadingAnchor.constraint(equalTo: proteinaLabel.trailingAnchor,constant: 8),
                proteinaTextField.trailingAnchor.constraint(equalTo: carboidratosTextField.trailingAnchor),


                gorduraLabel.topAnchor.constraint(equalTo: proteinaTextField.bottomAnchor,constant: 17),
                gorduraLabel.leadingAnchor.constraint(equalTo: proteinaLabel.leadingAnchor),

                gorduraTextField.centerYAnchor.constraint(equalTo: gorduraLabel.centerYAnchor),
                gorduraTextField.leadingAnchor.constraint(equalTo: gorduraLabel.trailingAnchor,constant: 8),
                gorduraTextField.trailingAnchor.constraint(equalTo: carboidratosTextField.trailingAnchor),

                kcalMediaLabel.topAnchor.constraint(equalTo: gorduraTextField.bottomAnchor,constant: 20),
                kcalMediaLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

                protocoloLabel.topAnchor.constraint(equalTo: kcalMediaLabel.bottomAnchor,constant: 40),
                protocoloLabel.leadingAnchor.constraint(equalTo: carboidratoslLabel.leadingAnchor),

                threeLoxButton.topAnchor.constraint(equalTo: protocoloLabel.bottomAnchor,constant: 25),
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

                macronutrienteLoxLabel.topAnchor.constraint(equalTo: line2View.bottomAnchor,constant: 50),
                macronutrienteLoxLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                macronutrienteLoxLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),

                carboidratoslLoxLabel.topAnchor.constraint(equalTo: macronutrienteLoxLabel.bottomAnchor,constant: 30),
                carboidratoslLoxLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),

                carboidratosLoxTextField.centerYAnchor.constraint(equalTo: carboidratoslLoxLabel.centerYAnchor),
                carboidratosLoxTextField.leadingAnchor.constraint(equalTo: carboidratoslLoxLabel.trailingAnchor,constant: 8),
                carboidratosLoxTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),

                proteinaLoxLabel.topAnchor.constraint(equalTo: carboidratoslLoxLabel.bottomAnchor,constant: 17),
                proteinaLoxLabel.leadingAnchor.constraint(equalTo: carboidratoslLoxLabel.leadingAnchor),

                proteinaLoxTextField.centerYAnchor.constraint(equalTo: proteinaLoxLabel.centerYAnchor),
                proteinaLoxTextField.leadingAnchor.constraint(equalTo: proteinaLoxLabel.trailingAnchor,constant: 8),
                proteinaLoxTextField.trailingAnchor.constraint(equalTo: carboidratosLoxTextField.trailingAnchor),


                gorduraLoxLabel.topAnchor.constraint(equalTo: proteinaLoxTextField.bottomAnchor,constant: 17),
                gorduraLoxLabel.leadingAnchor.constraint(equalTo: proteinaLoxLabel.leadingAnchor),

                gorduraLoxTextField.centerYAnchor.constraint(equalTo: gorduraLoxLabel.centerYAnchor),
                gorduraLoxTextField.leadingAnchor.constraint(equalTo: gorduraLoxLabel.trailingAnchor,constant: 8),
                gorduraLoxTextField.trailingAnchor.constraint(equalTo: carboidratosLoxTextField.trailingAnchor),

                kcalMediaLoxLabel.topAnchor.constraint(equalTo: gorduraLoxTextField.bottomAnchor,constant: 20),
                kcalMediaLoxLabel.centerXAnchor.constraint(equalTo: centerXAnchor),


                macronutrienteHighLabel.topAnchor.constraint(equalTo: kcalMediaLoxLabel.bottomAnchor,constant: 70),
                macronutrienteHighLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                macronutrienteHighLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),

                carboidratoslHighLabel.topAnchor.constraint(equalTo: macronutrienteHighLabel.bottomAnchor,constant: 30),
                carboidratoslHighLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),

                carboidratosHighTextField.centerYAnchor.constraint(equalTo: carboidratoslHighLabel.centerYAnchor),
                carboidratosHighTextField.leadingAnchor.constraint(equalTo: carboidratoslHighLabel.trailingAnchor,constant: 8),
                carboidratosHighTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),

                proteinaHighLabel.topAnchor.constraint(equalTo: carboidratoslHighLabel.bottomAnchor,constant: 17),
                proteinaHighLabel.leadingAnchor.constraint(equalTo: carboidratoslHighLabel.leadingAnchor),

                proteinaHighTextField.centerYAnchor.constraint(equalTo: proteinaHighLabel.centerYAnchor),
                proteinaHighTextField.leadingAnchor.constraint(equalTo: proteinaHighLabel.trailingAnchor,constant: 8),
                proteinaHighTextField.trailingAnchor.constraint(equalTo: carboidratosHighTextField.trailingAnchor),


                gorduraHighLabel.topAnchor.constraint(equalTo: proteinaHighLabel.bottomAnchor,constant: 17),
                gorduraHighLabel.leadingAnchor.constraint(equalTo: proteinaHighLabel.leadingAnchor),

                gorduraHighTextField.centerYAnchor.constraint(equalTo: gorduraHighLabel.centerYAnchor),
                gorduraHighTextField.leadingAnchor.constraint(equalTo: gorduraHighLabel.trailingAnchor,constant: 8),
                gorduraHighTextField.trailingAnchor.constraint(equalTo: carboidratosHighTextField.trailingAnchor),

                kcalMediaHighLabel.topAnchor.constraint(equalTo: gorduraHighTextField.bottomAnchor,constant: 20),
                kcalMediaHighLabel.centerXAnchor.constraint(equalTo: centerXAnchor)


                
            ])
    }
    
    
}
