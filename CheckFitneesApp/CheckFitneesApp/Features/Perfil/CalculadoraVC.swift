//
//  CalculadorasVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit


class CalculadoraVC: UIViewController {
    
    var screen: CalculadorasScreen?
    var viewModel: CalculadoraViewModel = CalculadoraViewModel()
    
    
    override func loadView() {
        screen = CalculadorasScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTableView(delegate: self, dataSource: self)
        viewModel.teste()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        screen?.tableView.reloadData()
        screen?.setupView(data: viewModel.itemClicked)
        viewModel.popularDatapopular()
        viewModel.updateSecondCellLabel(tableView: screen?.tableView ?? UITableView())
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension CalculadoraVC: UITableViewDelegate, UITableViewDataSource {
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
            let vc = AvaliacaoVC()
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
            let vc = PorcentualHomemVC()
            vc.name = item
            navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = DietaFlexivelVC()
            navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = CicloCarboidratosVC()
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

extension CalculadoraVC: TaxaMetabolicaVCProtocol{
    func succes(with taxa: Double) {
        viewModel.itemClicked?.taxaMetabolica = taxa
    }
}

//MARK: - CalculadorasScreenProtocol

extension CalculadoraVC: CalculadorasScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}
