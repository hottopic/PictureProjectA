//
//  TableImageViewController.swift
//  PictureProjectA
//
//  Created by William Yeung on 16/08/18.
//  Copyright © 2018 William Yeung. All rights reserved.
//

import UIKit

class TableImageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        cell.nameLabel.text = "William"
        cell.descriptionLabel.text = "Test"
        return cell
    }
    
}
