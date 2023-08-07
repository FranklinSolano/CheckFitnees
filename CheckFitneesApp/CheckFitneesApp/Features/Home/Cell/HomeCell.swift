//
//  HomeCell.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/20/23.
//

import UIKit

class HomeCell: UITableViewCell {
    
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
    
    lazy var addAlunoLabel: UILabel = {
        let label = TextLabelCustom(title: "")
        return label
    }()
    
    lazy var modalidadeLabel: UILabel = {
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
        addAlunoLabel.text = "Aluno: \(data.name ?? "")"
        modalidadeLabel.text = "Modalidade: \(data.modalidade ?? "")"
    }
}

//MARK: - ViewCode

extension HomeCell: ViewCode {
    func configElements() {
        addSubview(contentViewHome)
        contentViewHome.addSubview(addAlunoLabel)
        contentViewHome.addSubview(modalidadeLabel)
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentViewHome.topAnchor.constraint(equalTo: topAnchor),
            contentViewHome.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            contentViewHome.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            contentViewHome.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -10),
            contentViewHome.heightAnchor.constraint(equalToConstant: 70),
            
            addAlunoLabel.centerYAnchor.constraint(equalTo: contentViewHome.centerYAnchor,constant: -7),
            addAlunoLabel.leadingAnchor.constraint(equalTo: contentViewHome.leadingAnchor,constant: 30),
            
            modalidadeLabel.topAnchor.constraint(equalTo: addAlunoLabel.bottomAnchor),
            modalidadeLabel.leadingAnchor.constraint(equalTo: addAlunoLabel.leadingAnchor)
        ])
    }
}
