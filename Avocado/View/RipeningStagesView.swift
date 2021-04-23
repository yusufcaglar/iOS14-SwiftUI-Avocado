//
//  RipeningStagesView.swift
//  Avocado
//
//  Created by Yusuf Çağlar on 11.04.2021.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - Properties
    var ripeningStages: [Ripening] = ripeningData
    //MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
