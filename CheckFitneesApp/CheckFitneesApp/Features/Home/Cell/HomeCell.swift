//
//  HomeCell.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/20/23.
//

import UIKit

 final class HomeCell: UITableViewCell {
    
    lazy var contentViewHome: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.secondaryColor
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.primaryColor.cgColor
        view.layer.borderWidth = 2
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let label = TextLabelCustom(title: "")
        return label
    }()
    
    lazy var modalityLabel: UILabel = {
        let label = TextLabelCustom(title: "")
        return label
    }()
    
    static let identifier: String = "HomeTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = UIColor.secondaryColor
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCell(data:ProfileModel){
        nameLabel.text = "Aluno: \(data.name ?? "")"
        modalityLabel.text = "Modalidade: \(data.modality ?? "")"
    }
}

//MARK: - ViewCode

extension HomeCell: ViewCode {
    func configElements() {
        addSubview(contentViewHome)
        contentViewHome.addSubview(nameLabel)
        contentViewHome.addSubview(modalityLabel)
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentViewHome.topAnchor.constraint(equalTo: topAnchor),
            contentViewHome.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            contentViewHome.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            contentViewHome.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -10),
            contentViewHome.heightAnchor.constraint(equalToConstant: 70),
            
            nameLabel.centerYAnchor.constraint(equalTo: contentViewHome.centerYAnchor,constant: -7),
            nameLabel.leadingAnchor.constraint(equalTo: contentViewHome.leadingAnchor,constant: 30),
            
            modalityLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            modalityLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor)
        ])
    }
}
