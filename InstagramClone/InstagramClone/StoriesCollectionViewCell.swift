//
//  StoriesCollectionViewCell.swift
//  InstagramClone
//
//  Created by Valery on 25.07.2021.
//

import UIKit

final class StoriesCollectionViewCell: UICollectionViewCell {

    //MARK: - IBoUtlet
    @IBOutlet weak var storyImageLabel: UILabel!
    @IBOutlet weak var storyImageView: UIImageView!

    //MARK: - Public Properties
    var storiesItem: History? {
        didSet{
            storyImageLabel.text = storiesItem?.storiesName
            if let image = storiesItem?.storiesImageName {
                storyImageView.image = UIImage(named: image)
            }
        }
    }
}
