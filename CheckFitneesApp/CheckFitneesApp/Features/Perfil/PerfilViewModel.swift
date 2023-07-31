//
//  CalculadoraViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/1/23.
//

import UIKit
import Firebase



class PerfilViewModel {
    
    var userId = Auth.auth().currentUser?.uid
    var db = Firestore.firestore()
    var itemClicked: PerfilModel?
    var datapopular: [PerfilModel] = []
    
    public func createPerfilModel(name: String, carb: String, proteina: String, gordura: String, title: String, buttonGeneric: String, image: UIImage?) -> PerfilModel {
        return PerfilModel(name: name, modalidade: "", id: "", taxaMetabolica: 0, porcentual: "", carb: carb, proteina: proteina, gordura: gordura, title: title, buttonGeneric: buttonGeneric, image: image)
    }
    
    public func popularDatapopular() {
        let taxaMetabolicaTitle = "Sua Taxa Metabólica Basal é \(String(format: "%.2f", self.itemClicked?.taxaMetabolica ?? 0)) Kcal"
        let porcentualGorduraTitle = "   Seu porcentual de gordura é \(self.itemClicked?.porcentual ?? "") %"
        
        let titles = ["Avaliação Fisica",taxaMetabolicaTitle, porcentualGorduraTitle, "Dieta Flexivel", "Ciclo de Carboidratos", "Treino", "Volume de Treino", "Grafico Evolução"]
        let buttonGenerics = ["Calcular Medidas", "Calcular", "Calcular", "Calcular Dieta", "Calcular Carboidratos", "Calcular Treino", "Calcular Volume de Treino", "Check Evolução"]
        let images: [UIImage?] = [UIImage(named: "1"),UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(systemName: "dumbbell.fill"), UIImage(systemName: "figure.run.square.stack.fill"), UIImage(named: "6")]
        let carbo = ["","","","Carboidratos: \(self.itemClicked?.carb ?? "")", "","","",""]
        let proteina = ["","","","Proteina: \(self.itemClicked?.proteina ?? "")", "","","",""]
        let gordura = ["","","","Gordura: \(self.itemClicked?.gordura ?? "")", "","","",""]
        
        self.datapopular = [
            createPerfilModel(name: "", carb: carbo[0], proteina: proteina[0], gordura: gordura[0], title: titles[0], buttonGeneric: buttonGenerics[0], image: images[0]),
            createPerfilModel(name: "", carb: carbo[1], proteina: proteina[1], gordura: gordura[1], title: titles[1], buttonGeneric: buttonGenerics[1], image: images[1]),
            createPerfilModel(name: "", carb: carbo[2], proteina: proteina[2], gordura: gordura[2], title: titles[2], buttonGeneric: buttonGenerics[2], image: images[2]),
            createPerfilModel(name: "", carb: carbo[3], proteina: proteina[3], gordura: gordura[3], title: titles[3], buttonGeneric: buttonGenerics[3], image: images[3]),
            createPerfilModel(name: "", carb: carbo[4], proteina: proteina[4], gordura: gordura[4], title: titles[4], buttonGeneric: buttonGenerics[4], image: images[4]),
            createPerfilModel(name: "", carb: carbo[5], proteina: proteina[5], gordura: gordura[5], title: titles[5], buttonGeneric: buttonGenerics[5], image: images[5]),
            createPerfilModel(name: "", carb: carbo[6], proteina: proteina[6], gordura: gordura[6], title: titles[6], buttonGeneric: buttonGenerics[6], image: images[6]),
            createPerfilModel(name: "", carb: carbo[7], proteina: proteina[7], gordura: gordura[7], title: titles[7], buttonGeneric: buttonGenerics[7], image: images[7])
        ]
    }
    
    public func updateSecondCellLabel(tableView: UITableView) {
        if let cell = tableView.cellForRow(at: IndexPath(row: 1, section: 0)) as? PerfilCell {
            cell.titleLabel.text = "Sua Taxa Metabolica Basal é \(String(format: "%.2f", self.itemClicked?.taxaMetabolica ?? 0)) Kcal"
            print("mimimi \(self.itemClicked?.taxaMetabolica ?? 0 )")
        }
    }
}
