//
//  CellTableViewCell.swift
//  Portfolyo JSON
//
//  Created by niyazi on 23/05/2017.
//  Copyright © 2017 tanyildiz. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var workName: UILabel!
    @IBAction func commentBtn(_ sender: UIButton) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
