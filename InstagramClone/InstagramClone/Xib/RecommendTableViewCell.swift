//
//  RecommendTableViewCell.swift
//  UIKitDZ
//
//  Created by Valery on 22.07.2021.
//

import UIKit

final class RecommendTableViewCell: UITableViewCell {

    @IBOutlet weak var recommendScrollView: UIScrollView!

    override func awakeFromNib() {
        super.awakeFromNib()
        recommendScrollView.contentSize = CGSize(width: 700, height: 220)

    }

}
