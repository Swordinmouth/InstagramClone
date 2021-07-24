//
//  WeeklyTableViewCell.swift
//  InstagramClone
//
//  Created by Valery on 24.07.2021.
//

import UIKit

final class WeeklyTableViewCell: UITableViewCell {

    //Mark: - IBOutlets
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var friendAvatar: UIImageView!
    @IBOutlet weak var userDescription: UILabel!
    @IBOutlet weak var subscribeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
