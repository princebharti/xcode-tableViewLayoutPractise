//
//  TableFooter.swift
//  tableViewLayoutPractise
//
//  Created by Prince Bharti on 12/01/19.
//  Copyright © 2019 Prince Bharti. All rights reserved.
//

import UIKit

class TableFooter: UIView {
   
    @IBOutlet weak var errorLable: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func awakeFromNib() {
//            errorLable.isHidden = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size = self.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        self.frame.size.height = size.height
    }
    
    func show(message: String) {
        errorLable.text = message
        errorLable.isHidden = false
    }
    
    func hide() {
        errorLable.text = "why not hiding"
        errorLable.isHidden = true
    }
}
