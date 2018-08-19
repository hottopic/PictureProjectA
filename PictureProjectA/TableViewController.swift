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
    var pics : [Photo]!
    
    //let pictures = ["panda", "cat", "dog", "leo"]
    
    //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath) as! CustomTableViewCell

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cdata  = UserDefaults.standard.object(forKey: "data") as! Data
        pics = NSKeyedUnarchiver.unarchiveObject(with: cdata) as! [Photo]

        // Do any additional setup after loading the view.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return pics.count
        //return (pics.count)
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        /*let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath) as! CustomTableViewCell
        
        //let data = UserDefaults.standard.object(forKey: "photo") as! Data
        
        //let photo = NSKeyedUnarchiver.unarchiveObject(with: data) as! Photo
        
        
        //cell.pictureView.image = UIImage(named: (pics[indexPath.row] + ".jpeg"))
        cell.nameLabel.text = pics[indexPath.row].title
        cell.pictureView.image = pics[indexPath.row].picture
        
        //cell.nameLabel.text = photo.title
        //cell.pictureView.image = photo.picture
        tableView.reloadData()
        
        return (cell)*/
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        //cell.modelLabel.text = pics[indexPath.row].model
        //cell.priceLabel.text = String(pics[indexPath.row].price)
        //cell.pictureView.image = pics[indexPath.row].picture
        cell.nameLabel.text = pics[indexPath.row].title
        
        cell.pictureView.image = pics[indexPath.row].picture
        //cell.nameLabel.text = String(pics[indexPath.row].title)
        //cell.textLabel.text = String(pics[indexPath.row].description)

        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let cdata  = UserDefaults.standard.object(forKey: "data") as! Data
        pics = NSKeyedUnarchiver.unarchiveObject(with: cdata) as! [Photo]
        
    }

}
