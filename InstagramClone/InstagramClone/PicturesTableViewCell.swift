//
//  PicturesTableViewCell.swift
//  InstagramClone
//
//  Created by Valery on 26.07.2021.
//

import UIKit

final class PicturesTableViewCell: UITableViewCell {

    //MARK:- IBotlet
    @IBOutlet private var picturesCollectionView: UICollectionView!

    // MARK: - Private Properties
    private var profilePictureCell = "picturesCollectionViewCell"

    private var photoPosts: [PhotoAlbum] = {
        var photos = [PhotoAlbum]()
        var index = 1
        var photo = PhotoAlbum()
        for _ in 1...15 {
            photo.photoName = "photo"
            photos.append(photo)
            index += 1
        }
        return photos
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    // MARK: - Private Methods
    private func setupCell() {
        picturesCollectionView.delegate = self
        picturesCollectionView.dataSource = self
    }
}

//MARK: - Extension UICollectionViewDelegate
extension PicturesTableViewCell: UICollectionViewDelegate {}

//MARK: - Extension UICollectionViewDelegateFlowLayout
extension PicturesTableViewCell: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (contentView.frame.size.width/3) - 3 ,
                      height: (contentView.frame.size.width/3) - 3)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
}

//MARK: - Extension UICollectionViewDataSource
extension PicturesTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoPosts.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
    UICollectionViewCell {

        guard let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: profilePictureCell, for: indexPath)
                as? PicturesCollectionViewCell else { return UICollectionViewCell() }

            itemCell.photoItem = photoPosts[indexPath.row]
            return itemCell

        }
}
