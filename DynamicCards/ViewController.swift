//
//  ViewController.swift
//  DynamicCards
//
//  Created by Zakaria Braksa on 12/2/15.
//  Copyright © 2015 Zakaria Braksa. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
   @IBOutlet weak var tableView: UITableView!
   
   var images = [
      "http://media.engadget.com/img/product/4/37g/apple-macbook-pro-13-inch-unibody-4g6-800.jpg",
      "http://www.ethicalconsumer.org/portals/0/images/reports/244634_large.jpg"
   ]
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      self.tableView.registerNib(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: "CardTableViewCell")
      
      tableView.estimatedRowHeight = 430
      tableView.rowHeight = UITableViewAutomaticDimension
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
   func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 3
   }
   
   func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      return 1;
   }
   
   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      
      let cell = tableView.dequeueReusableCellWithIdentifier("CardTableViewCell", forIndexPath: indexPath) as! CardTableViewCell
      
      let height: CGFloat
      switch indexPath.row {
      case 0: height = 350
      case 1: height = 200
      case 2: height = 100
      default: height = 0
      }
      
      cell.imageViewHeightConstraint.constant = height
      
      return cell
   }

}

