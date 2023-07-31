//
//  LevelActivityCell.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 7/11/23.
//

import UIKit

class LevelActivityCell: UITableViewCell {
    
    lazy var contentView1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corTwo
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = TextLabelCustom(title: "")
        label.font = UIFont(name: "Roboto-Bold", size: 14)
        return label
    }()
    
    lazy var subTitleLabel: UILabel = {
        let label = TextLabelCustom(title: "")
        label.font = UIFont(name: "Roboto-Light", size: 12)
        label.numberOfLines = 0
        return label
    }()
    
    static let identifier: String = "LevelActivityCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = .corOne
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCell(data:LevelActivityModel){
        titleLabel.text = data.title
        subTitleLabel.text = data.subTitle
    }
}

extension LevelActivityCell: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView1,titleLabel,subTitleLabel]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentView1.topAnchor.constraint(equalTo: topAnchor),
            contentView1.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 15),
            contentView1.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -15),
            contentView1.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -10),
            contentView1.heightAnchor.constraint(equalToConstant: 75),
            
            titleLabel.topAnchor.constraint(equalTo: contentView1.topAnchor,constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: contentView1.leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView1.trailingAnchor,constant: -20),
            
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 5),
            subTitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            subTitleLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor)
        ])
    }
}
