//
//  ContentView.swift
//  Clubhouse
//
//  Created by Sheikh Bayazid on 3/27/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HomeHeaderView()
                
                ScrollView(.vertical) {
                    LazyVStack(spacing: 16) {
                        UpcomingRoomsView(upcomingRooms: UpcomingRoom.example)
                            
                    }.padding(.top, 20)
                    .padding(.bottom, 10)
                    
                    LazyVStack(spacing: 12) {
                        
                        ForEach(0..<4, id: \.self) { index in
                            RoomView(room: FeedRoom.example[index])
                        }
                        
                    }
                }
                
                BottomHomeView()
                
            }.padding(.top, 35)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
