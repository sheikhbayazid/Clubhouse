//
//  HomeHeaderView.swift
//  Clubhouse
//
//  Created by Sheikh Bayazid on 3/27/21.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack(spacing: 20) {
            Image.search
            
            Spacer()
            
            Image.invite
            Image.calendar
            Image.notificationBell
            
            Image.profile
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .cornerRadius(12)
        }.font(Font.Nunito.regular(size: 25))
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding(.horizontal, 15)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
            .previewLayout(.sizeThatFits )
    }
}
