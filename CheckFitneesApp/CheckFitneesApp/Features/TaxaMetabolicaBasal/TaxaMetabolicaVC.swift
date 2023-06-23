//
//  TaxaMetabolicaVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol TaxaMetabolicaVCProtocol: AnyObject {
    func succes(with taxa: Double)
}

class TaxaMetabolicaVC: UIViewController {
    
    weak var delegate:TaxaMetabolicaVCProtocol?
    func delegate(delegate:TaxaMetabolicaVCProtocol) {
        self.delegate = delegate
    }
    
    var screen: TaxaMetabolicaScreen?
    var viewModel: TaxaMetabolicaBasalViewModel = TaxaMetabolicaBasalViewModel()
    var name = ""
    
    override func loadView() {
        screen = TaxaMetabolicaScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
        screen?.nameLabel.text = name
    }
    
}

//MARK: - TaxaMetabolicaScreenProtocol

extension TaxaMetabolicaVC: TaxaMetabolicaScreenProtocol {
    func actionCalculoHomem() {
        screen?.lineView.backgroundColor = .corOne
        screen?.line2View.backgroundColor = .clear
    }
    
    func actionCalculoMulher() {
        screen?.lineView.backgroundColor = .clear
        screen?.line2View.backgroundColor = .corOne
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCalcularButton() {
        viewModel.calcularTaxaMetabolica(textFieldPeso: screen?.pesoTextField.text ?? "", textFieldAltura: screen?.alturaTextField.text ?? "", textFieldIdade: screen?.idadeTextField.text ?? "", lineView: screen?.lineView ?? UIView(), labelTaxa: screen?.taxaMetabolicaLabel ?? UILabel(), pesoText: screen?.pesoTextField ?? UITextField(), alturaText: screen?.alturaTextField ?? UITextField(), idadeText: screen?.idadeTextField ?? UITextField())
        viewModel.atualizarDado(id: viewModel.result)
        self.delegate?.succes(with : viewModel.reusltTaxaMetabolica)
    }
}
//MARK: - UITextFieldDelegate

extension TaxaMetabolicaVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
