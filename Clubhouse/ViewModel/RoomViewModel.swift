//
//  RoomViewModel.swift
//  Clubhouse
//
//  Created by Sheikh Bayazid on 3/27/21.
//

import Foundation

class RoomViewModel: ObservableObject {
    private (set) var activeRoom: FeedRoom = FeedRoom.example[0]
    
    func setActive(_ room: FeedRoom) {
        self.activeRoom = room
    }
}

