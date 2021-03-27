//
//  UpcomingRoomsView.swift
//  Clubhouse
//
//  Created by Sheikh Bayazid on 3/27/21.
//

import SwiftUI

struct UpcomingRoomsView: View {
    let upcomingRooms: [UpcomingRoom]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(upcomingRooms) { room in
                GroupRoomView(upcomingRoom: room)
                
            }
        }.padding([.vertical, .trailing], 15)
        .padding(.leading, 25)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.secondaryBackground)
        .cornerRadius(18)
        .padding(.horizontal, 15)
    }
}


struct GroupRoomView: View {
    let upcomingRoom: UpcomingRoom
    
    var body: some View {
        HStack(alignment: .top) {
            Text(upcomingRoom.date, style: .time)
                .font(Font.Nunito.semiBold(size: 12))
                .foregroundColor(Color.textYellow)
            
            VStack(alignment: .leading) {
                
                if let groupName = upcomingRoom.groupName {
                    CurrentGroupView(groupName: groupName)
                }
                
                
                Text(upcomingRoom.roomName)
                    .lineLimit(1)
                    .font(Font.Nunito.regular(size: 15))
                    .foregroundColor(Color.textBlack)
            }
        }
    }
}


struct CurrentGroupView: View {
    let groupName: String
    
    var body: some View {
        HStack {
            Text(groupName.uppercased())
                .foregroundColor(Color.textBlack)
            Image.home
                .foregroundColor(Color.customGreen)
        }.font(Font.Nunito.regular(size: 12))
        .padding(.top, 1)
    }
}

struct UpcomingRoomsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GroupRoomView(upcomingRoom: UpcomingRoom.example[0])
            .previewLayout(.sizeThatFits)
            
            UpcomingRoomsView(upcomingRooms: UpcomingRoom.example)
                .previewLayout(.sizeThatFits)
            
            
        }
    }
}
