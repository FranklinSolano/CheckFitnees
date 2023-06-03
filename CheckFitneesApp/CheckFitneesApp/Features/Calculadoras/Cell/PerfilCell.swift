//
//  DietaFlexivelCell.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/2/23.
//
import UIKit

class PerfilCell: UITableViewCell {
    
    lazy var contentView1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corOne
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = TextLabelCustom(title: "Dieta Flexivel")
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .corTwo
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    lazy var carbolLabel: UILabel = {
        let label = TextLabelCustom(title: "Carboidratos: 0")
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .corTwo
        return label
    }()
    
    lazy var proteinaLabel: UILabel = {
        let label = TextLabelCustom(title: "Proteina: 0")
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .corTwo
        return label
    }()
    
    lazy var gorduraLabel: UILabel = {
        let label = TextLabelCustom(title: "Gordura: 0")
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .corTwo
        return label
    }()
    
    
    lazy var calcularButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Calcular Dieta", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        button.setTitleColor(.corTwo, for: .normal)
        button.setImage(UIImage(systemName: "arrowshape.right.fill"), for: .normal)
        button.tintColor = .corTwo
        return button
    }()
    
    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "dieta")
        image.tintColor = .white
        return image
    }()
    
    
    
    static let identifier: String = "DietaFlexivelCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = .corTwo
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(data: Perfil) {
        titleLabel.text = data.title ?? ""
        carbolLabel.text = data.carbo ?? ""
        proteinaLabel.text = data.proteina ?? ""
        gorduraLabel.text = data.gordura ?? ""
        calcularButton.setTitle(data.buttonGeneric ?? "", for: .normal)
        imagePerson.image = data.image
    }
}

//MARK: - ViewCode

extension PerfilCell: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView1,titleLabel,carbolLabel,proteinaLabel,gorduraLabel,calcularButton,imagePerson]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            
            contentView1.topAnchor.constraint(equalTo: topAnchor,constant: 20),
            contentView1.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 15),
            contentView1.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -15),
            contentView1.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView1.heightAnchor.constraint(equalToConstant: 130),
            
            titleLabel.topAnchor.constraint(equalTo: contentView1.topAnchor,constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: contentView1.leadingAnchor,constant: 72),
            titleLabel.trailingAnchor.constraint(equalTo: contentView1.trailingAnchor,constant: -72),
            
            carbolLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            carbolLabel.leadingAnchor.constraint(equalTo: contentView1.leadingAnchor,constant: 30),
            
            proteinaLabel.topAnchor.constraint(equalTo: carbolLabel.bottomAnchor),
            proteinaLabel.leadingAnchor.constraint(equalTo: carbolLabel.leadingAnchor),
            
            gorduraLabel.topAnchor.constraint(equalTo: proteinaLabel.bottomAnchor),
            gorduraLabel.leadingAnchor.constraint(equalTo: carbolLabel.leadingAnchor),
            
            calcularButton.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -20),
            calcularButton.leadingAnchor.constraint(equalTo: contentView1.leadingAnchor,constant: 30),
            
            imagePerson.trailingAnchor.constraint(equalTo: contentView1.trailingAnchor,constant: -10),
            imagePerson.topAnchor.constraint(equalTo: contentView1.topAnchor,constant: 40),
            imagePerson.heightAnchor.constraint(equalToConstant: 60),
            imagePerson.widthAnchor.constraint(equalToConstant: 60)
        ])
    }
}

