//
//  FooterView.swift
//  tableViewLayoutPractise
//
//  Created by Prince Bharti on 12/01/19.
//  Copyright © 2019 Prince Bharti. All rights reserved.
//

import UIKit

class FooterView: UITableViewHeaderFooterView {

    @IBOutlet weak var errorLabel: UILabel!
    
    override func awakeFromNib() {
        errorLabel.isHidden = true
    }
    
    func Show(){
        errorLabel.isHidden = false

    }
    
    func hide() {
        errorLabel.isHidden = true

    }
    

}
