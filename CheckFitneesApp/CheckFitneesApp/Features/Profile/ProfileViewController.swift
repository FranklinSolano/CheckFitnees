//
//  CalculadorasVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit


 final class ProfileViewController: UIViewController {
    
    var screen: ProfileScreen?
    var viewModel: ProfileViewModel = ProfileViewModel()
    
    override func loadView() {
        screen = ProfileScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTableView(delegate: self, dataSource: self)
        screen?.setupView(data: viewModel.itemClicked)
        viewModel.popularDatapopular()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        screen?.tableView.reloadData()
        viewModel.popularDatapopular()
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.datapopular.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProfileCell? = tableView.dequeueReusableCell(withIdentifier: ProfileCell.identifier, for: indexPath) as? ProfileCell
        cell?.setupCell(data: viewModel.datapopular[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let item = screen?.nameLabel.text ?? ""
            let vc = AssessmentViewController()
            vc.name = item
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            let item = screen?.nameLabel.text ?? ""
            let vc = BasalMetabolicRateViewController()
            vc.viewModel.result = viewModel.itemClicked?.id ?? ""
            vc.name = item
            vc.delegate(delegate: self)
            navigationController?.pushViewController(vc, animated: true)
        case 2:
            let item = screen?.nameLabel.text ?? ""
            let vc = PercentageViewController()
            vc.name = item
            navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = FlexibleDietViewController()
            vc.modalPresentationStyle = .overFullScreen
            vc.modalTransitionStyle = .flipHorizontal
            self.present(vc, animated: true)
        case 4:
            let item = screen?.nameLabel.text ?? ""
            let vc = CarbCycleViewController()
            vc.name = item
            navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = TrainingViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 6:
            let vc = TrainingVolumeViewController()
            navigationController?.pushViewController(vc, animated: true)
        default:
            let vc = GraphicViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

//MARK: - TaxaMetabolicaVCProtocol

extension ProfileViewController: BasalMetabolicRateViewControllerProtocol{
    func succes(with taxa: Double) {
        viewModel.itemClicked?.basalMetabolicRate = taxa
        viewModel.updateSecondCellLabel()
    }
}

//MARK: - CalculadorasScreenProtocol

extension ProfileViewController: ProfileScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}
 
//MARK: - PerfilViewModelProtocol

extension ProfileViewController: PerfilViewModelProtocol {
    func updateSecondCellPerfilLabel() {
        let tableview = UITableView()
          if let cell = tableview.cellForRow(at: IndexPath(row: 1, section: 0)) as? ProfileCell {
                 cell.titleLabel.text = "Sua Taxa Metabolica Basal é \(String(format: "%.2f", viewModel.itemClicked?.basalMetabolicRate ?? 0)) Kcal"
             }
    }
}
