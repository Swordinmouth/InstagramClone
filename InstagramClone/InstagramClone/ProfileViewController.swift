//
//  ProfileViewController.swift
//  UIKitDZ
//
//  Created by Valery on 21.07.2021.
//

import UIKit

final class ProfileViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var profileTableView: UITableView!

    //MARK: - Private Properties
    private let profileCellId = "profileCell"
    private let storiesCellId = "storiesCell"
    private let segmentCellId = "segmentCell"
    private let pictureCellId = "pictureCell"
    private var refreshController = UIRefreshControl()


    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        profileTableView.dataSource = self
        profileTableView.delegate = self
        setupRefresh()

    }

    //MARK: - Private Methods
    private func setupRefresh() {
        refreshController.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)

        profileTableView.addSubview(refreshController)
    }
    @objc private func handleRefresh() {
        refreshController.endRefreshing()
    }
}

//MARK: - Exstension UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: profileCellId)
                    as? ProfileTableViewCell else { return UITableViewCell() }
            return cell
        case 1: guard let cell = tableView.dequeueReusableCell(withIdentifier: storiesCellId)
                    as? StorysTableViewCell else { return UITableViewCell() }
            return cell
        case 2: guard let cell = tableView.dequeueReusableCell(withIdentifier: segmentCellId)
                    as? SegmentTableViewCell else { return UITableViewCell() }
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: pictureCellId)
                    as? PicturesTableViewCell else { return UITableViewCell() }
            return cell
        default: break
        }
        return UITableViewCell()
    }
}

//MARK: - Exstension UITableViewDelegate
extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 260
        case 1:
            return 160
        case 2:
            return 50
        case 3:
            return 690
        default : return 100
        }
    }
}

