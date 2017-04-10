//
//  CustomTableViewCell.swift
//  PageRankiOS
//
//  Created by George Katashev on 5.04.17.
//  Copyright © 2017 George Katashev. All rights reserved.
//

import UIKit

final class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var linkLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
