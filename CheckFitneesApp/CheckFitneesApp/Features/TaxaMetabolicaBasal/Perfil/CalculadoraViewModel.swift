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

    var datapopular: [PerfilModel] = [PerfilModel(name: "", modalidade: "", id: "", taxaMetabolica: "", porcentual: "", carb: "", proteina: "", gordura: "", title: "Avaliação Fisica", buttonGeneric: "Calcular Medidas", image: UIImage(named: "medidas"))]
    
    func popularDatapopular() {
        let titles = ["Sua Taxa Metabolica Basal é \(self.itemClicked?.taxaMetabolica ?? "") Kcal", "Seu porcentual de gordura é \(self.itemClicked?.porcentual ?? "") %", "Dieta Flexivel", "Ciclo de Carboidratos", "Treino", "Volume de Treino", "Grafico Evolução"]
        print(itemClicked?.taxaMetabolica ?? "")
        let buttonGenerics = ["Calcular", "Calcular", "Calcular Dieta", "Calcular Carboidratos", "Calcular Trieno", "Calcular Volume de Treino", "Check Evolução"]
        let images: [UIImage?] = [UIImage(named: "taxa"), UIImage(named: "porcentual"), UIImage(named: "dieta"), UIImage(named: "ciclo"), UIImage(systemName: "dumbbell.fill"), UIImage(systemName: "figure.run.square.stack.fill"), UIImage(named: "grafico")]
        let carbo = ["","","Carboidratos: \(self.itemClicked?.carb ?? "")", "","","",""]
        let proteina = ["","","Proteina: \(self.itemClicked?.proteina ?? "")", "","","",""]
        let gordura = ["","","Gordura: \(self.itemClicked?.gordura ?? "")", "","","",""]
        
        for index in 0..<7 {
            let teste = PerfilModel(name: "", modalidade: "", id: "", taxaMetabolica: "", porcentual: "", carb: carbo[index], proteina: proteina[index], gordura: gordura[index], title: titles[index], buttonGeneric: buttonGenerics[index], image: images[index])
            
            self.datapopular.append(teste)
            
        }
    }
    
    func navigateToViewController(for indexPath: IndexPath, navigationController: UINavigationController?) {
           switch indexPath.row {
           case 0:
               let vc = AvaliacaoVC()
               navigationController?.pushViewController(vc, animated: true)
           case 1:
               let vc = TaxaMetabolicaVC()
               vc.viewModel.result = itemClicked?.id ?? ""
               navigationController?.pushViewController(vc, animated: true)
           case 2:
               let vc = PorcentualHomemVC()
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
    
    
    func updateSecondCellLabel(tableView: UITableView) {
        if let cell = tableView.cellForRow(at: IndexPath(row: 1, section: 0)) as? PerfilCell {
            cell.titleLabel.text = "Sua Taxa Metabolica Basal é \(self.itemClicked?.taxaMetabolica ?? "") Kcal"
        }
    }
   
}

    

