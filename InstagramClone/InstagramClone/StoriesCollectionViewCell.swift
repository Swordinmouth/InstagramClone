//
//  StoriesCollectionViewCell.swift
//  InstagramClone
//
//  Created by Valery on 25.07.2021.
//

import UIKit

final class StoriesCollectionViewCell: UICollectionViewCell {

    //MARK: - IBoUtlet
    @IBOutlet private var storyImageLabel: UILabel!
    @IBOutlet private var storyImageView: UIImageView!

    //MARK: - Public Properties
    var storiesItem: History? {
        didSet{
            storyImageLabel.text = storiesItem?.storiesName
            guard let image = storiesItem?.storiesImageName else { return }
                storyImageView.image = UIImage(named: image)
        }
    }
}
