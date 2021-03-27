//
//  FeedItem.swift
//  Clubhouse
//
//  Created by Sheikh Bayazid on 3/27/21.
//

import Foundation

protocol Feed {}

//MARK: - Feed Item
struct FeedItem: Identifiable {
    let id = UUID()
    let item: Feed
}

//MARK: - Upcoming Feed Item
struct UpcomingFeedItem: Feed {
    let upcoming: [UpcomingRoom]
}

//MARK: - Room Feed Item
struct RoomFeedItem: Feed {
    let room: FeedRoom
}


//MARK: - FeedItem Dummy Example
extension FeedItem {
    static var example: [FeedItem] {
        var feedItems = [FeedItem]()
        
        feedItems.append(FeedItem(item: UpcomingFeedItem(upcoming: UpcomingRoom.example)))
        
        FeedRoom.example.forEach { item in
            feedItems.append(FeedItem(item: RoomFeedItem(room: item)))
        }
        
        return feedItems
    }
}
