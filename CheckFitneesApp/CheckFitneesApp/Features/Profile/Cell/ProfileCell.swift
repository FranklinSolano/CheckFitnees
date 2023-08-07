//
//  DietaFlexivelCell.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/2/23.
//
import UIKit

 final class ProfileCell: UITableViewCell {
    
    lazy var contentView1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.secondaryColor
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.primaryColor.cgColor
        view.layer.borderWidth = 2
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = TextLabelCustom(title: "Dieta Flexivel")
        label.font = UIFont(name: "Roboto-Bold", size: 18)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    lazy var carbohydrateLabel: UILabel = {
        let label = TextLabelCustom(title: "Carboidratos: 0")
        label.font = UIFont(name: "Roboto-Bold", size: 9.3)
        label.textColor = .white
        return label
    }()
    
    lazy var proteinLabel: UILabel = {
        let label = TextLabelCustom(title: "Proteina: 0")
        label.font = UIFont(name: "Roboto-Bold", size: 9.3)
        label.textColor = .white
        return label
    }()
    
    lazy var fatLabel: UILabel = {
        let label = TextLabelCustom(title: "Gordura: 0")
        label.font = UIFont(name: "Roboto-Bold", size: 9.3)
        label.textColor = .white
        return label
    }()
    
    
    lazy var calculateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Calcular Dieta", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 14)
        button.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "dieta")
        image.tintColor = .primaryColor
        return image
    }()
    
    static let identifier: String = "DietaFlexivelCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = .secondaryColor
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupCell(data: ProfileModel?) {
        titleLabel.text = data?.title ?? ""
        carbohydrateLabel.text = data?.carbohydrates ?? ""
        proteinLabel.text = data?.protein ?? ""
        fatLabel.text = data?.fat ?? ""
        calculateButton.setTitle(data?.buttonGeneric ?? "", for: .normal)
        imagePerson.image = UIImage(named: data?.image ?? "")
    }
}

//MARK: - ViewCode

extension ProfileCell: ViewCode {
    func configElements() {
        [contentView1,titleLabel,carbohydrateLabel,proteinLabel,fatLabel,calculateButton,imagePerson].forEach({addSubview($0)})
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentView1.topAnchor.constraint(equalTo: topAnchor,constant: 20),
            contentView1.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 15),
            contentView1.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -15),
            contentView1.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView1.heightAnchor.constraint(equalToConstant: 130),
            
            titleLabel.topAnchor.constraint(equalTo: contentView1.topAnchor,constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: contentView1.leadingAnchor,constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: contentView1.trailingAnchor,constant: -15),
            
            carbohydrateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            carbohydrateLabel.leadingAnchor.constraint(equalTo: contentView1.leadingAnchor,constant: 30),
            
            proteinLabel.topAnchor.constraint(equalTo: carbohydrateLabel.bottomAnchor),
            proteinLabel.leadingAnchor.constraint(equalTo: carbohydrateLabel.leadingAnchor),
            
            fatLabel.topAnchor.constraint(equalTo: proteinLabel.bottomAnchor),
            fatLabel.leadingAnchor.constraint(equalTo: carbohydrateLabel.leadingAnchor),
            
            calculateButton.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -20),
            calculateButton.leadingAnchor.constraint(equalTo: contentView1.leadingAnchor,constant: 30),
            
            imagePerson.trailingAnchor.constraint(equalTo: contentView1.trailingAnchor,constant: -20),
            imagePerson.topAnchor.constraint(equalTo: contentView1.topAnchor,constant: 55),
            imagePerson.heightAnchor.constraint(equalToConstant: 38),
            imagePerson.widthAnchor.constraint(equalToConstant: 38)
        ])
    }
}

