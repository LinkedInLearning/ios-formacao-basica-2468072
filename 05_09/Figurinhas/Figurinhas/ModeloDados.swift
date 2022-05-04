//
//  ModeloDados.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/16/22.
//

import Foundation

class Figura: Identifiable, ObservableObject {
    var id = UUID()
    var nome: String
    var imagem: String
    var frase: String
    var descricao: String
    @Published var vidas: Int
    @Published var potencia: Double
    
    init(nome: String, imagem: String, frase: String, descricao: String, vidas: Int, potencia: Double) {
        self.nome = nome
        self.imagem = imagem
        self.frase = frase
        self.descricao = descricao
        self.vidas = vidas
        self.potencia = potencia
    }
}

class MinhaColecao: ObservableObject {
    @Published var figuras: [Figura] = []
}

var figuras = [
    Figura(
        nome:"Mingle",
        imagem:"figura_01",
        frase:"Problema em dobro",
        descricao:"O Mingle se destaca por fazer o dobro do trabalho na metade do tempo, com extrema precisão. Essas habilidades são úteis para ela em sua função de Analista de Dados Sênior para uma empresa internacional de computação em nuvem. Ela também tem uma propensão para dança de salão, dança de linha e praticamente qualquer tipo de atividade que a deixe dançar ao som da música.",
        vidas:2,
        potencia:0.42
    ),
    Figura(
        nome:"Yodel",
        imagem:"figura_02",
        frase:"Iodelaii Hii Huu!",
        descricao:"Yodel cresceu em uma família de cantores e faladores e nunca conseguia falar uma palavra. Então, seu vasto talento para o yodeling surgiu. Agora ele se apresenta para fãs adoradores em todo o mundo, e sempre tem a voz mais alta na mesa de jantar. Aliás, ele também é um grande defensor da neutralidade da rede e passa incontáveis horas moderando um fórum na internet dedicado exclusivamente a esse assunto.",
        vidas:4,
        potencia:0.19
    ),
    Figura(
        nome:"Squido",
        imagem:"figura_03",
        frase:"Um olho para o design",
        descricao:"Squido tem as mãos, ou melhor, tentáculos, em tudo. Em primeiro lugar, ele é um web designer com foco na estética visual, mas também gosta de design de UX e garante que o que ele cria seja traduzido de maneira ideal para o usuário final. Nas horas de folga, ele é um ávido fotógrafo da natureza e jogador de boliche.",
        vidas:3,
        potencia:0.91
    )
]
