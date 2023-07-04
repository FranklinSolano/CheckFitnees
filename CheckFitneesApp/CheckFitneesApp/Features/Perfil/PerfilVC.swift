//
//  CalculadorasVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit


class PerfilVC: UIViewController {
    
    var screen: PeriflScreen?
    var viewModel: PerfilViewModel = PerfilViewModel()
    
    override func loadView() {
        screen = PeriflScreen()
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

extension PerfilVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.datapopular.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PerfilCell? = tableView.dequeueReusableCell(withIdentifier: PerfilCell.identifier, for: indexPath) as? PerfilCell
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
            let vc = AvaliacaoVC()
            vc.name = item
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            let item = screen?.nameLabel.text ?? ""
            let vc = TaxaMetabolicaVC()
            vc.viewModel.result = viewModel.itemClicked?.id ?? ""
            vc.name = item
            vc.delegate(delegate: self)
            navigationController?.pushViewController(vc, animated: true)
        case 2:
            let item = screen?.nameLabel.text ?? ""
            let vc = PorcentualVC()
            vc.name = item
            navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc:DietaFlexivelVC = DietaFlexivelVC()
            vc.modalPresentationStyle = .overFullScreen
            vc.modalTransitionStyle = .flipHorizontal
            self.present(vc, animated: true)
        case 4:
            let item = screen?.nameLabel.text ?? ""
            let vc = CicloCarboidratosVC()
            vc.name = item
            navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = TreinoVC()
            navigationController?.pushViewController(vc, animated: true)
        case 6:
            let vc = VolumeTreinoVC()
            navigationController?.pushViewController(vc, animated: true)
        default:
            let vc = GraficoVC()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

//MARK: - TaxaMetabolicaVCProtocol

extension PerfilVC: TaxaMetabolicaVCProtocol{
    func succes(with taxa: Double) {
        viewModel.itemClicked?.taxaMetabolica = taxa
        print("aloo \(viewModel.itemClicked?.taxaMetabolica ?? 0)")
        viewModel.updateSecondCellLabel(tableView: screen?.tableView ?? UITableView())
    }
}

//MARK: - CalculadorasScreenProtocol

extension PerfilVC: PerfilScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}
