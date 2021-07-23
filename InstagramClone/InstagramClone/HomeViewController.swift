//
//  ViewController.swift
//  UIKitDZ
//
//  Created by Valery on 22.06.2021.
//

import UIKit

final class HomeViewController: UIViewController {

    //MARK: - IBOUtlets
    @IBOutlet private var homeTableView: UITableView!

    //MARK: - Private Properties
    private let storiesTableViewCell = "StoriesTableViewCell"
    private let pictureTableViewCell = "PictureTableViewCell"
    private let recommendTableViewCell = "RecommendTableViewCell"


    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }

    //MARK: - Private Methods
    private func registerCells() {
        homeTableView.register(UINib(nibName: storiesTableViewCell, bundle: nil), forCellReuseIdentifier: storiesTableViewCell)
        homeTableView.register(UINib(nibName: pictureTableViewCell, bundle: nil), forCellReuseIdentifier: pictureTableViewCell)
        homeTableView.register(UINib(nibName: recommendTableViewCell, bundle: nil), forCellReuseIdentifier: recommendTableViewCell)
        homeTableView.register(UINib(nibName: pictureTableViewCell, bundle: nil), forCellReuseIdentifier: pictureTableViewCell)
    }


}

extension HomeViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: storiesTableViewCell) as? StoriesTableViewCell else { return UITableViewCell() }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: pictureTableViewCell) as? PictureTableViewCell else { return UITableViewCell() }
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: recommendTableViewCell) as? RecommendTableViewCell else { return UITableViewCell() }
            return cell
        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: pictureTableViewCell) as? PictureTableViewCell else { return UITableViewCell() }
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 120
        case 1:
            return 570
        case 2:
            return 300
        default:
            return 570
        }
    }
}

extension HomeViewController: UITableViewDelegate {}
