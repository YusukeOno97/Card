//
//  TableViewCell.swift
//  Card
//
//  Created by 小野勇輔 on 2019/08/15.
//  Copyright © 2019 原田悠嗣. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {



    @IBOutlet weak var faceImageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var JobLabel: UILabel!

    @IBOutlet weak var homeTowonLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
