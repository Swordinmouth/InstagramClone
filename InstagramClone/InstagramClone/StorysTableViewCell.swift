//
//  StoriesTableViewCell.swift
//  InstagramClone
//
//  Created by Valery on 25.07.2021.
//

import UIKit

final class StorysTableViewCell: UITableViewCell {

    //MARK: - Private Properties
    @IBOutlet weak var storyCollectionView: UICollectionView!

    private var storeisPictureCell = "storiesCollectionViewCell"

    private var groupHistories: [History] = {
        var itemGroups = [History]()
        var index = 1
        for _ in 1...6 {
            var itemGroup = History()
            itemGroup.storiesImageName = "hhh" 
            itemGroup.storiesName = "yolo"
            itemGroups.append(itemGroup)
            index += 1
        }
        return itemGroups
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    // MARK: - Private functions
     private func setupCell() {
        storyCollectionView.delegate = self
        storyCollectionView.dataSource = self
     }
}

// MARK: - UICollectionViewDelegate
extension StorysTableViewCell: UICollectionViewDelegate {}

// MARK: - UICollectionViewDelegateFlowLayout
extension StorysTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 160)
    }
}

// MARK: - UICollectionViewDataSource
extension StorysTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        groupHistories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {

        guard let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: storeisPictureCell, for: indexPath)
                as? StoriesCollectionViewCell else { return UICollectionViewCell() }

            itemCell.storiesItem = groupHistories[indexPath.row]
            return itemCell
        }
}
