//
//  ViewController.swift
//  tableViewLayoutPractise
//
//  Created by Prince Bharti on 12/01/19.
//  Copyright © 2019 Prince Bharti. All rights reserved.
//

import UIKit

extension UIView {
    
    static func instantiateFromNib<T: UIView>(of type: T.Type ) -> T {
        let nib = UINib(nibName: String(describing: type), bundle: nil)
        let view = nib.instantiate(withOwner: nil, options: nil).first as! T
        return view
     }
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var tableFooter: TableFooter!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTablewView()

    }

    @IBAction func showErrorTapped(_ sender: Any) {
        
        let sectionFooter = tableView.footerView(forSection: 0) as! FooterView
        tableView.beginUpdates()
        sectionFooter.Show()
        tableView.endUpdates()
   
     }
    

    
    private func setupTablewView() {
        tableView.register(UINib(nibName: "FooterView", bundle: nil), forHeaderFooterViewReuseIdentifier: "FooterView")
        tableFooter = TableFooter.instantiateFromNib(of: TableFooter.self)
        tableView.tableFooterView = tableFooter

       }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(tableFooter.frame.size,"-------->>>po")
    }
    
    
    @IBAction func hideErrorTapped(_ sender: Any) {
        let sectionFooter = tableView.footerView(forSection: 0) as! FooterView
        tableView.beginUpdates()
        sectionFooter.hide()
        tableView.endUpdates()
        
        
    }
    
    
    @IBAction func showFooterError(_ sender: Any) {
        let message = "waposdfsdfsdfsdfsd waposdfsdfsdfsdfsd waposdfsdfsdfsdfsd waposdfsdfsdfsdfsd waposdfsdfsdfsdfsd waposdfsdfsdfsdfsd waposdfsdfsdfsdfsd"
        tableFooter.show(message: message)
      
     }
    
    @IBAction func hideFotterError(_ sender: UIButton) {
        tableFooter.hide()
     
    }
    
}



extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = "\(indexPath)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let sectionFooter = tableView.dequeueReusableHeaderFooterView(withIdentifier: "FooterView")
        return sectionFooter
    }
   
    
}

