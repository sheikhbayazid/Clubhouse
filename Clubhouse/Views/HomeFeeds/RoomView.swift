//
//  RoomView.swift
//  Clubhouse
//
//  Created by Sheikh Bayazid on 3/27/21.
//

import SwiftUI

struct RoomView: View {
    let room: FeedRoom
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let groupName = room.groupName {
                CurrentGroupView(groupName: groupName)
            }
            
            Text(room.roomName)
                .font(Font.Nunito.semiBold(size: 18))
            
            HStack(alignment: .top) {
                if room.hostPics.count > 1 {
                    FeedPicsView(photoString: room.hostPics.first!)
                        .overlay(FeedPicsView(photoString: room.hostPics.last!).offset(x: 15, y: 15))
                        .padding(.bottom, 5)
                } else {
                    FeedPicsView(photoString: room.hostPics.first!)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    ForEach(room.participants, id: \.self) { participant in
                        HStack(spacing: 8) {
                            Text(participant)
                            Text("💬")
                        }
                    }
                    HStack(spacing: 5) {
                        Text(room.numberOfParticipants.description)
                        
                        Image.person
                        
                        Text("/")
                        
                        Text(room.numberOfHosts.description)
                        
                        Image.chatBubble
                        
                    }.font(Font.Nunito.regular(size: 10))
                    .foregroundColor(Color.textBlack.opacity(0.6))
                    
                }.font(Font.Nunito.semiBold(size: 16))
                .padding(.horizontal, 30)
                
                
                
                
            }//.padding(.leading, 30)
            
        }.foregroundColor(Color.textBlack)
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.cardBackground)
        .cornerRadius(20)
        .shadow(color: Color.cardShadowTint, radius: 1, y: 1)
        .padding(.horizontal, 15)
    }
}


//MARK: - Feed Photo View
struct FeedPicsView: View {
    private let imageSize: CGFloat = 38
    let photoString: String
    
    var body: some View {
        Image(photoString)
            .resizable()
            .scaledToFit()
            .frame(width: imageSize, height: imageSize)
            .cornerRadius(14)
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView(room: FeedRoom.example[2])
    }
}
