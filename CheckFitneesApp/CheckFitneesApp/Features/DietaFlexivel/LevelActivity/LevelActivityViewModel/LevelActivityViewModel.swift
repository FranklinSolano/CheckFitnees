//
//  LevelActivityViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 7/11/23.
//

import UIKit

class LevelActivityViewModel{
    
    var data: [LevelActivityModel] = [LevelActivityModel(title: "Nao muito ativo", subTitle: "Passa boa parte do dia sentado (ex: caixa de banco, trabalho escitorio)"),
                                      LevelActivityModel(title: "Levemeente Ativo", subTitle: "Passa boa parte do dia de pé (ex: professor, vendedor)"),
                                      LevelActivityModel(title: "Ativo", subTitle: "Passa boa parte do dia fazendo alguma atividade fisica (ex: garçom, carteiro)"),
                                      LevelActivityModel(title: "Bastante Ativo", subTitle: "Passa boa parte do dia fazendo atividade fisica pesada (ex: carpiteiro, ciclista, entregador)"),]
    
}
