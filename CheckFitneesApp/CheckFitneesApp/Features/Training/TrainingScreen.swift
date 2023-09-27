//
//  TreinoScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 7/31/23.
//

import UIKit

protocol TrainingScreenProtocol: AnyObject {
    func actionBackButton()
    func actionDataTraining()
}

 final class TrainingScreen: UIView {
     
     weak var delegate: TrainingScreenProtocol?
     func delegate(delegate: TrainingScreenProtocol){
         self.delegate = delegate
     }

     lazy var titleLabel: UILabel = {
         let label = TitleLabelCustom()
         label.textColor = .primaryColor
         return label
     }()
     
     lazy var imageLogo: UIImageView = {
         let image = UIImageView()
         image.translatesAutoresizingMaskIntoConstraints = false
         image.image = UIImage(named: "logo1")
         return image
     }()
     
     lazy var backButton: UIButton = {
         let button = UIButton()
         button.translatesAutoresizingMaskIntoConstraints = false
         button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
         button.setTitle("voltar", for: .normal)
         button.setTitleColor(.primaryColor, for: .normal)
         button.tintColor = UIColor.primaryColor
         button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
         return button
     }()
     
     lazy var dataTrainingButton: UIButton = {
         let button = ButtonCustom(title: "     Dados do Treino")
         button.contentHorizontalAlignment = .left
         button.setTitleColor(.white, for: .normal)
         button.addTarget(self, action: #selector(tappedDataTraining), for: .touchUpInside)
         return button
     }()
     
     lazy var imagePlus: UIImageView = {
         let image = UIImageView()
         image.translatesAutoresizingMaskIntoConstraints = false
         image.image = UIImage(systemName: "plus.circle.fill")
         image.tintColor = UIColor.white
         return image
     }()
     
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .secondaryColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     
     @objc func tappedBackButton(){
         self.delegate?.actionBackButton()
     }
     
     @objc func tappedDataTraining(){
         self.delegate?.actionDataTraining()
     }
     
     
    
}

//MARK: - ViewCode

extension TrainingScreen: ViewCode {
    func configElements() {
        [titleLabel, imageLogo, backButton, dataTrainingButton, imagePlus].forEach({addSubview($0)})
    }
    
    func configConstraint() {
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
                titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
                
                imageLogo.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
                imageLogo.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
                imageLogo.heightAnchor.constraint(equalToConstant: 46),
                imageLogo.widthAnchor.constraint(equalToConstant: 52),
                
                backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
                backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
                
                dataTrainingButton.topAnchor.constraint(equalTo: imageLogo.bottomAnchor,constant: 35),
                dataTrainingButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                dataTrainingButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
                dataTrainingButton.heightAnchor.constraint(equalToConstant: 60),

                imagePlus.centerYAnchor.constraint(equalTo: dataTrainingButton.centerYAnchor),
                imagePlus.trailingAnchor.constraint(equalTo: dataTrainingButton.trailingAnchor,constant: -30),
                imagePlus.heightAnchor.constraint(equalToConstant: 30),
                imagePlus.widthAnchor.constraint(equalToConstant: 30)
            ])
    }
}
