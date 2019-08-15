//
//  LikedListTableViewController.swift
//  Card
//
//  Created by 原田悠嗣 on 2019/08/10.
//  Copyright © 2019 原田悠嗣. All rights reserved.
//

import UIKit

class LikedListTableViewController: UITableViewController {

    // 「いいね」された名前の一覧
    var likedName: [String] = []
    //「「いいね」された職業の一覧
    var likedJob: [String] = []
    // 「いいね」された出身地の一覧
    var likedHomeTown: [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // セルを登録
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }


    // MARK: - Table view data source

    // 必須:セルの数を返すメソッド
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // いいねされたユーザーの数
        return likedName.count
    }

    // セルの高さを75に変更
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }

    // 必須:セルの設定
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        // 画像の設定
        cell.faceImageView?.image = UIImage(named: likedName[indexPath.row])
        // 名前の設定
        cell.nameLabel.text = likedName[indexPath.row]
        // 職業の設定
        cell.JobLabel.text = likedJob[indexPath.row]
        // 出身の設定
        cell.homeTowonLabel.text = likedHomeTown[indexPath.row]
        return cell
    }

}
