//
//  StoriesTableViewCell.swift
//  UIKitDZ
//
//  Created by Valery on 21.07.2021.
//

import UIKit

final class StoriesTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet private var storiesScrollView: UIScrollView!
    @IBOutlet private var blackView: UIView! {
        didSet {
            blackView.layer.cornerRadius = 30
            blackView.layer.borderWidth = 2
            blackView.layer.borderColor = UIColor.systemPink.cgColor
        }
    }
    @IBOutlet private var blackViewTwo: UIView! {
        didSet {
            blackViewTwo.layer.cornerRadius = 30
            blackViewTwo.layer.borderWidth = 2
            blackViewTwo.layer.borderColor = UIColor.systemPink.cgColor
        }
    }
    @IBOutlet private var blackViewThree: UIView!  {
        didSet {
            blackViewThree.layer.cornerRadius = 30
            blackViewThree.layer.borderWidth = 2
            blackViewThree.layer.borderColor = UIColor.systemPink.cgColor
        }
    }
    @IBOutlet private var blackViewFour: UIView!  {
        didSet {
            blackViewFour.layer.cornerRadius = 30
            blackViewFour.layer.borderWidth = 2
            blackViewFour.layer.borderColor = UIColor.systemPink.cgColor
        }
    }
    @IBOutlet private var blackViewFive: UIView!  {
        didSet {
            blackViewFive.layer.cornerRadius = 30
            blackViewFive.layer.borderWidth = 2
            blackViewFive.layer.borderColor = UIColor.systemPink.cgColor
        }
    }
    @IBOutlet private var blackViewSix: UIView!  {
        didSet {
            blackViewSix.layer.cornerRadius = 30
            blackViewSix.layer.borderWidth = 2
            blackViewSix.layer.borderColor = UIColor.systemPink.cgColor
        }
    }
    @IBOutlet private var blackViewSeven: UIView!  {
        didSet {
            blackViewSeven.layer.cornerRadius = 30
            blackViewSeven.layer.borderWidth = 2
            blackViewSeven.layer.borderColor = UIColor.systemPink.cgColor
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        storiesScrollView.contentSize = CGSize(width: 627, height: 200)
    }
    
}
