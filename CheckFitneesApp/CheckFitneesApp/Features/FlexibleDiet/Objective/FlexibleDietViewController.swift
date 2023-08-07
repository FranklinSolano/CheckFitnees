//
//  DietaFlexivelVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

 final class FlexibleDietViewController: UIViewController {
    
    var screen: FlexibleDietScreen?
    var screen2: LevelActivityScreen?
    var viewModel: LevelActivityViewModel = LevelActivityViewModel()
    
    override func loadView() {
        screen = FlexibleDietScreen()
        screen2 = LevelActivityScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen2?.configTableView(delegate: self, dataSource: self)
        screen2?.delegate(delegate: self)
    }
}

//MARK: - DietaFlexivelScreenProtocol

extension FlexibleDietViewController: FlexibleDietScreenProtocol {
    func actionGainButton() {
        view = screen2
    }
    
    func actionMaintainButton() {
        view = screen2
    }
    
    func actionLoseButton() {
        view = screen2
    }
    
    func actionCancelButton() {
        dismiss(animated: true)
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension FlexibleDietViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: LevelActivityCell? = tableView.dequeueReusableCell(withIdentifier: LevelActivityCell.identifier, for: indexPath) as? LevelActivityCell
        cell?.configCell(data: viewModel.data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        95
    }
}

//MARK: - LevelActivityScreenProtocol

extension FlexibleDietViewController: LevelActivityScreenProtocol {
    func actionBackButton() {
        view = screen
    }
    
    func actionNextButton() {
        
    }
}
