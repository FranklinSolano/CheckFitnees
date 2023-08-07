//
//  CalculadoraViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/1/23.
//

import Firebase

protocol PerfilViewModelProtocol: AnyObject {
    func updateSecondCellPerfilLabel()
}

 final class ProfileViewModel {
     
     weak var delegate: PerfilViewModelProtocol?
     func delegate(delegate:PerfilViewModelProtocol) {
         self.delegate = delegate
     }
    
    var userId = Auth.auth().currentUser?.uid
    let db = Firestore.firestore()
    var itemClicked: ProfileModel?
    var datapopular: [ProfileModel] = []
    
    public func createPerfilModel(name: String, carb: String, proteina: String, gordura: String, title: String, buttonGeneric: String, image: String?) -> ProfileModel {
        return ProfileModel(name: name, modalidade: "", id: "", taxaMetabolica: 0, porcentual: "", carb: carb, proteina: proteina, gordura: gordura, title: title, buttonGeneric: buttonGeneric, image: image)
    }
    
    public func popularDatapopular() {
        let taxaMetabolicaTitle = "Sua Taxa Metabólica Basal é \(String(format: "%.2f", self.itemClicked?.taxaMetabolica ?? 0)) Kcal"
        let porcentualGorduraTitle = "   Seu porcentual de gordura é \(self.itemClicked?.porcentual ?? "") %"
        
        let titles = ["Avaliação Fisica",taxaMetabolicaTitle, porcentualGorduraTitle, "Dieta Flexivel", "Ciclo de Carboidratos", "Treino", "Volume de Treino", "Grafico Evolução"]
        let buttonGenerics = ["Calcular Medidas", "Calcular", "Calcular", "Calcular Dieta", "Calcular Carboidratos", "Calcular Treino", "Calcular Volume de Treino", "Check Evolução"]
        let images =  ["1", "2", "3", "4", "5", "6", "7", "8"]
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
     
     func updateSecondCellLabel() {
         self.delegate?.updateSecondCellPerfilLabel()
     }
}
