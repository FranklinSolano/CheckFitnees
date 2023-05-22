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
        view.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var addAlunoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nome: Franklin Solano"
        label.textColor = UIColor(red: 104/255, green: 84/255, blue: 84/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    lazy var modalidadeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Modalidade: Academia"
        label.textColor = UIColor(red: 104/255, green: 84/255, blue: 84/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    static let identifier: String = "HomeTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = UIColor(red: 50/255, green: 42/255, blue: 42/255, alpha: 1)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
            
            addAlunoLabel.centerYAnchor.constraint(equalTo: contentViewHome.centerYAnchor,constant: -10),
            addAlunoLabel.leadingAnchor.constraint(equalTo: contentViewHome.leadingAnchor,constant: 30),
           
            modalidadeLabel.topAnchor.constraint(equalTo: addAlunoLabel.bottomAnchor),
            modalidadeLabel.leadingAnchor.constraint(equalTo: addAlunoLabel.leadingAnchor),
        ])
    }
    
    
}
