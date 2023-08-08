//
//  HomeVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/20/23.
//

import UIKit

 final class HomeViewController: UIViewController {
    
    var screen: HomeScreen?
    var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchFirebase()
        screen?.configTableView(delegate: self, dataSource: self)
        screen?.delegate(delegate: self)
        viewModel.delegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        viewModel.fetchFirebase()
    }
}

//MARK: - HomeScreenProtocol

extension HomeViewController: HomeScreenProtocol {
    func actionAddButton() {
        let vc: NewAlertCustonViewController = NewAlertCustonViewController()
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .flipHorizontal
        vc.delegate(delegate: self)
        self.present(vc, animated: true)
    }
}

//MARK: - NewAlertCustonVCProtocol

extension HomeViewController: NewAlertCustonVCProtocol {
    func reloadTableView() {
        viewModel.fetchFirebase()
        screen?.tableView.reloadData()
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HomeCell? = tableView.dequeueReusableCell(withIdentifier: HomeCell.identifier, for: indexPath) as? HomeCell
        cell?.configCell(data: viewModel.datapopular[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = viewModel.datapopular[indexPath.row]
        let vc: ProfileViewController = ProfileViewController()
        vc.viewModel.itemClicked = item
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let item = viewModel.datapopular[indexPath.row]
        let itemId = item.id
        viewModel.removeData(withId: itemId ?? "")
        viewModel.datapopular.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

//MARK: - HomeViewModelProtocol

extension HomeViewController: HomeViewModelProtocol {
    func success() {
        self.screen?.tableView.reloadData()
    }
    func error() {
        
    }
}
