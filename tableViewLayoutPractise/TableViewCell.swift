//
//  TableViewCell.swift
//  tableViewLayoutPractise
//
//  Created by Prince Bharti on 12/01/19.
//  Copyright © 2019 Prince Bharti. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

  
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var label: UILabel!
    
    
    
}
