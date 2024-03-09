//
//  ViewModel.swift
//  Pokedex
//
//  Created by Ray Chang on 2024/3/9.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    private let pokemonManager = PokemonManager()
    
    @Published var pokemonList = [Pokemon]()
    @Published var pokemonDetails: DetailPokemon?
    @Published var searchText = ""
    
    // Used with searchText to filter pokemon results
    var filteredPokemon: [Pokemon] {
        return searchText == "" ? pokemonList : pokemonList.filter { $0.name.contains(searchText.lowercased())
        }
    }
    
    init() {
        self.pokemonList = pokemonManager.getPokemon()
        print(pokemonList)
    }
}