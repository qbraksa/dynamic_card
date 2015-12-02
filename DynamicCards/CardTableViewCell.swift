//
//  CardTableViewCell.swift
//  DynamicCards
//
//  Created by Zakaria Braksa on 12/2/15.
//  Copyright © 2015 Zakaria Braksa. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var cardImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
