//
//  LikeTableViewController.swift
//  InstagramClone
//
//  Created by Valery on 23.07.2021.
//

import UIKit

final class LikeTableViewController: UITableViewController {

    //MARK: - Enum
    enum CellType {
         case subscriptionRequest
         case today
         case week
     }

    //MARK: - Private Properties
    private var cellType: [CellType] = [.subscriptionRequest, .today, .week]
    private var sections = ["Запросы на подписку", "Сегодня", "На этой неделе"]
    private let requestCellId = "RequestCell"
    private let todayCellId = "TodayCell"
    private let weeklyCellId = "WeeklyCell"
    private var posts = [Post]()
    private var weekPosts = [Post]()
    private var refreshController = UIRefreshControl()

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        createTodayPost()
        createWeekPost()
        setupRefresh()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let type = cellType[section]
        switch type {
        case .subscriptionRequest:
            return 0
        case .today:
            return 2
        case .week:
            return 5
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let type = cellType[indexPath.section]

        switch type {
        case .subscriptionRequest:
            return UITableViewCell()
        case .today:
            let cell = tableView.dequeueReusableCell(withIdentifier: todayCellId) as? TodayTableViewCell

            let item = posts[indexPath.row]
            cell?.userName.text = item.userName
            cell?.friendAvatar.image = UIImage(named: item.userImage)
            cell?.newsDescription.text = item.commentToPost
            if item.userImage != "" {
                cell?.newsPicture.image = UIImage(named: item.commentImage)
            }

            return cell ?? UITableViewCell()
        case .week:
            let cell = tableView.dequeueReusableCell(withIdentifier: weeklyCellId) as? WeeklyTableViewCell

            let item = weekPosts[indexPath.row]

            cell?.userName.text = item.userName
            cell?.friendAvatar.image = UIImage(named: item.userImage)
            cell?.userDescription.text = item.commentToPost

            switch item.describeToUser {
            case 1:
                cell?.subscribeButton.backgroundColor = .black
                cell?.subscribeButton.setTitle("Вы подписаны", for: .normal)
                cell?.subscribeButton.layer.borderWidth = 1
                cell?.subscribeButton.layer.borderColor = UIColor.lightGray.cgColor
            default:
                break
            }
            return cell ?? UITableViewCell()
        }
    }

    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = .black
        if let header = view as? UITableViewHeaderFooterView{
            header.textLabel?.textColor = .white
        }
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }

    //MARK: - Private Methods
    private func createTodayPost() {
        let firstPost = Post(userName: "@brain Упомянул(-а) вас в комментарии:", userImage: "hhh",
                             commentToPost: "@youngCardinal спасибо)",
                             timeComment: "11ч", commentImage: "photo")

        let secondPost = Post(userName: "@lol Понравился ваш комментарий:", userImage: "hhh",
                              commentToPost:  "норм",
                              timeComment: "12ч", commentImage: "photo")

        posts.append(contentsOf: [firstPost, secondPost])
    }

    private func createWeekPost() {
        let firstPost = Post(userName: "@bruceTheBat", userImage: "bats",
                             commentToPost: "Подписался(-ась) на ваши обновления",
                             timeComment: "24ч", commentImage: "", describeToUser: 1)

        let secondPost = Post(userName: "@last.AirBender", userImage: "aang",
                              commentToPost: "Подписался(-ась) на ваши обновления",
                              timeComment: "11ч", commentImage: "", describeToUser: 0)

        let thirdPost = Post(userName: "@true.Avatar", userImage: "lol",
                             commentToPost: "Подписался(-ась) на ваши обновления",
                             timeComment: "12ч", commentImage: "", describeToUser: 1)

        let fouthPost = Post(userName: "@hipster.sunny", userImage: "dudeinscarf",
                             commentToPost: "Подписался(-ась) на ваши обновления",
                             timeComment: "11ч", commentImage: "", describeToUser: 0)

        let fifthPost = Post(userName: "@homer.theDonutsLover", userImage: "homer",
                             commentToPost: "Подписался(-ась) на ваши обновления",
                             timeComment: "11ч", commentImage: "", describeToUser: 1)

        weekPosts.append(contentsOf: [firstPost, secondPost, thirdPost, fouthPost, fifthPost])
    }

    private func setupRefresh() {
        refreshController.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        tableView.addSubview(refreshController)
    }
    @objc private func handleRefresh() {
        refreshController.endRefreshing()
    }
}
