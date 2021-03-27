//
//  BottomHomeView.swift
//  Clubhouse
//
//  Created by Sheikh Bayazid on 3/27/21.
//

import SwiftUI

struct BottomHomeView: View {
    var body: some View {
        ZStack {
            Image.grid
                .foregroundColor(Color.textBlack.opacity(0.9))
                .font(Font.Nunito.semiBold(size: 24))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 25)
            
            Button(action: {}, label: {
                Label("Start a room", systemImage: "plus")
                
            })
            .font(Font.Nunito.bold(size: 20))
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .foregroundColor(.white)
            .background(Color.customGreen.opacity(0.9))
            .clipShape(Capsule())
            .shadow(radius: 2, y: 1)
            
        }.frame(maxWidth: .infinity, maxHeight: 105, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color.background.opacity(0.1), Color.background]), startPoint: .top, endPoint: .bottom))
    }
}

struct BottomHomeView_Previews: PreviewProvider {
    static var previews: some View {
        BottomHomeView()
            .previewLayout(.sizeThatFits)
    }
}
