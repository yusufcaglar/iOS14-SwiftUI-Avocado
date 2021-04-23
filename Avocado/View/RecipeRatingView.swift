//
//  RecipeRatingView.swift
//  Avocado
//
//  Created by Yusuf Çağlar on 23.04.2021.
//

import SwiftUI

struct RecipeRatingView: View {
    //MARK: - Properties
    var recipe: Recipe
    
    //MARK: - Body
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

//MARK: - Preview
struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
