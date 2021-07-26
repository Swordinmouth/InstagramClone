//
//  Action.swift
//  InstagramClone
//
//  Created by Valery on 24.07.2021.
//

import Foundation

struct Post {

    // MARK: - Public Properties
    let userName: String
    let userImage: String
    let commentToPost: String
    let timeComment: String
    let commentImage: String
    let describeToUser: Int

    init(userName: String,
         userImage: String,
         commentToPost: String,
         timeComment: String,
         commentImage: String = "",
         describeToUser: Int = 0) {
        self.userName = userName
        self.userImage = userImage
        self.commentToPost = commentToPost
        self.timeComment = timeComment
        self.commentImage = commentImage
        self.describeToUser = describeToUser
    }
}
