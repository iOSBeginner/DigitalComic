//
//  GridTableViewCell.swift
//  ComicDemo
//
//  Created by 蘇健豪 on 2018/6/30.
//  Copyright © 2018年 蘇健豪. All rights reserved.
//

import UIKit

class GridTableViewCell: UITableViewCell {

    @IBOutlet weak var ComicPicture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .none
    }
}
