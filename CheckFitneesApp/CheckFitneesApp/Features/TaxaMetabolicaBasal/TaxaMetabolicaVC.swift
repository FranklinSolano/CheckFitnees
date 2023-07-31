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
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCalcularButton() {
        viewModel.calcularTaxaMetabolica(textFieldPeso: screen?.pesoTextField.text ?? "", textFieldAltura: screen?.alturaTextField.text ?? "", textFieldIdade: screen?.idadeTextField.text ?? "", labelTaxa: screen?.resultTaxaMetabolicaLabel ?? UILabel())
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
