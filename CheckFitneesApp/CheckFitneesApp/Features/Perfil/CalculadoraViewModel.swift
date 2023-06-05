//
//  CalculadoraViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/1/23.
//

import UIKit
import Firebase



class CalculadoraViewModel {
    
    
    var userId = Auth.auth().currentUser?.uid
    var db = Firestore.firestore()
    var itemClicked: PerfilModel?

    var datapopular: [PerfilModel] = []
    func teste(){
        if let item = itemClicked {
                datapopular = [
                    PerfilModel(name: item.name, modalidade: "", id: "", taxaMetabolica: 0, porcentual: "", carb: "", proteina: "", gordura: "", title: "Avaliação Fisica", buttonGeneric: "Calcular Medidas", image: UIImage(named: "medidas"))
                ]
            }
    }
    
    func popularDatapopular() {
        let titles = ["Sua Taxa Metabolica Basal é \(String(format: "%.2f", self.itemClicked?.taxaMetabolica ?? 0)) Kcal", "Seu porcentual de gordura é \(self.itemClicked?.porcentual ?? "") %", "Dieta Flexivel", "Ciclo de Carboidratos", "Treino", "Volume de Treino", "Grafico Evolução"]
        print(itemClicked?.taxaMetabolica ?? "")
        
        let buttonGenerics = ["Calcular", "Calcular", "Calcular Dieta", "Calcular Carboidratos", "Calcular Trieno", "Calcular Volume de Treino", "Check Evolução"]
        
        let images: [UIImage?] = [UIImage(named: "taxa"), UIImage(named: "porcentual"), UIImage(named: "dieta"), UIImage(named: "ciclo"), UIImage(systemName: "dumbbell.fill"), UIImage(systemName: "figure.run.square.stack.fill"), UIImage(named: "grafico")]
        
        let carbo = ["","","Carboidratos: \(self.itemClicked?.carb ?? "")", "","","",""]
        
        let proteina = ["","","Proteina: \(self.itemClicked?.proteina ?? "")", "","","",""]
        
        let gordura = ["","","Gordura: \(self.itemClicked?.gordura ?? "")", "","","",""]
        
        
        for index in 0..<7 {
            let teste = PerfilModel(name: "", modalidade: "", id: "", taxaMetabolica: 0, porcentual: "", carb: carbo[index], proteina: proteina[index], gordura: gordura[index], title: titles[index], buttonGeneric: buttonGenerics[index], image: images[index])
            
            self.datapopular.append(teste)
        }
    }
    
    func updateSecondCellLabel(tableView: UITableView) {
        if let cell = tableView.cellForRow(at: IndexPath(row: 1, section: 0)) as? PerfilCell {
            cell.titleLabel.text = "Sua Taxa Metabolica Basal é \(String(format: "%.2f", self.itemClicked?.taxaMetabolica ?? 0)) Kcal"
        }
    }
   
}

    

//[PerfilModel(name: itemClicked?.name ?? "", modalidade: "", id: "", taxaMetabolica: 0, porcentual: "", carb: "", proteina: "", gordura: "", title: "Avaliação Fisica", buttonGeneric: "Calcular Medidas", image: UIImage(named: "medidas"))]
