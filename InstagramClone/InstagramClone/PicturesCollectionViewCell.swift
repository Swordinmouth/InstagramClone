//
//  PicturesCollectionViewCell.swift
//  InstagramClone
//
//  Created by Valery on 26.07.2021.
//

import UIKit

final class PicturesCollectionViewCell: UICollectionViewCell {

    //MARK: IBOutlet
    @IBOutlet weak var picturesImageView: UIImageView!

    // MARK: - Public Properties
    var photoItem: PhotoAlbum? {
        didSet {
            if let image =  photoItem?.photoName {
                picturesImageView.image = UIImage(named: image)
                picturesImageView.contentMode = .scaleAspectFill
                picturesImageView.clipsToBounds = true
            }
        }
    }
}
