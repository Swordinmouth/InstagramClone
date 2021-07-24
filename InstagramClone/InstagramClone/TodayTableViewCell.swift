//
//  TodayTableViewCell.swift
//  InstagramClone
//
//  Created by Valery on 24.07.2021.
//

import UIKit

final class TodayTableViewCell: UITableViewCell {

    //Mark: - IBOutlets
    @IBOutlet weak var friendAvatar: UIImageView!
    @IBOutlet weak var newsPicture: UIImageView!
    @IBOutlet weak var newsDescription: UILabel!
    @IBOutlet weak var userName: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
