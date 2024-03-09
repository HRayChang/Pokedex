//
//  PokemonManager.swift
//  Pokedex
//
//  Created by Ray Chang on 2024/3/9.
//

import Foundation

class PokemonManager {
    
    func getPokemon() -> [Pokemon] {
        let data: PokemonPage = Bundle.main.decode(file:"pokemon.json")
        let pokemon: [Pokemon] = data.results
        
        return pokemon
    }
}
