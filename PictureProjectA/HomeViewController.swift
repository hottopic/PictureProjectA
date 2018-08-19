//
//  HomeViewController.swift
//  PictureProjectA
//
//  Created by William Yeung on 14/08/18.
//  Copyright © 2018 William Yeung. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var pics : [Photo]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cdata  = UserDefaults.standard.object(forKey: "data") as! Data
        pics = NSKeyedUnarchiver.unarchiveObject(with: cdata) as! [Photo]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
