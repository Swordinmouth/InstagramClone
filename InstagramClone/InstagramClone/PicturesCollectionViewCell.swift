//
//  PicturesCollectionViewCell.swift
//  InstagramClone
//
//  Created by Valery on 26.07.2021.
//

import UIKit

final class PicturesCollectionViewCell: UICollectionViewCell {

    //MARK: IBOutlet
    @IBOutlet private var picturesImageView: UIImageView!

    // MARK: - Public Properties
    var photoItem: PhotoAlbum? {
        didSet {
            guard let image =  photoItem?.photoName else { return }
                picturesImageView.image = UIImage(named: image)
                picturesImageView.contentMode = .scaleAspectFill
                picturesImageView.clipsToBounds = true
        }
    }
}
