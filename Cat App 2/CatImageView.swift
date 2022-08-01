//
//  CatImageView.swift
//  Cat App 2
//
//  Created by DWizard11 on 30/7/22.
//

import SwiftUI

struct CatImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://cataas.com/c")) { image in image
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .padding()
        } placeholder: {
            VStack {
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }

    }
}

struct CatImageView_Previews: PreviewProvider {
    static var previews: some View {
        CatImageView()
    }
}
