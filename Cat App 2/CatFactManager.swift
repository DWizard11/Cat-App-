//
//  CatFactManager.swift
//  Cat App 2
//
//  Created by DWizard11 on 30/7/22.
//

import Foundation
import SwiftUI

class CatFactManager: ObservableObject {
    
    @Published var catFact: CatFact?
    
    
    func getCatFact(){
        let apiURL = URL(string: "https://catfact.ninja/fact")!
        let request = URLRequest(url: apiURL)
        
        catFact = nil
        
        URLSession.shared.dataTask(with: request) { data, _, _ in
            if let data = data {
                let decoder = JSONDecoder()
                
                DispatchQueue.main.async {
                    self.catFact = try? decoder.decode(CatFact.self, from: data)
                }
            }
        }
        .resume()
    }
    
}
