//
//  CatFactView.swift
//  Cat App 2
//
//  Created by DWizard11 on 30/7/22.
//

import SwiftUI

struct CatFactView: View {
    
    @StateObject var catFactManager = CatFactManager()
    
    var body: some View {
        VStack {
            if let catFact = catFactManager.catFact {
                Text(catFact.fact)
            } else {
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }
        .onAppear {
            catFactManager.getCatFact()
        }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
