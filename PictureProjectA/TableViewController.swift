//
//  TableViewController.swift
//  PictureProjectA
//
//  Created by William Yeung on 18/08/18.
//  Copyright © 2018 William Yeung. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    let pictures = ["panda", "cat", "dog", "leo"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (pictures.count)
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath) as! CustomTableViewCell
        
        cell.pictureView.image = UIImage(named: (pictures[indexPath.row] + ".jpeg"))
        cell.nameLabel.text = pictures[indexPath.row]
        
        return (cell)
    }

}
