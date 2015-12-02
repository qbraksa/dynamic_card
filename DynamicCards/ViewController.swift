//
//  ViewController.swift
//  DynamicCards
//
//  Created by Zakaria Braksa on 12/2/15.
//  Copyright © 2015 Zakaria Braksa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var images = [
        "http://media.engadget.com/img/product/4/37g/apple-macbook-pro-13-inch-unibody-4g6-800.jpg",
        "http://www.samsung.com/uk/consumer-images/product/refrigeration/2014/RB31FDJNDBC-EU/RB31FDJNDBC-EU-2191468-0.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerNib(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: "CardTableViewCell")
        
        self.tableView.estimatedRowHeight = 88.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CardTableViewCell", forIndexPath: indexPath) as! CardTableViewCell
        
        let url:NSURL? = NSURL(string: images[indexPath.row])
        let data:NSData? = NSData(contentsOfURL : url!)
        let image = UIImage(data : data!)
        
        cell.cardImageView.image = image
        
        return cell
    }
    
    

}

