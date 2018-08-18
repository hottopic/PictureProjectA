//
//  Photo.swift
//  PictureProjectA
//
//  Created by William Yeung on 18/08/18.
//  Copyright © 2018 William Yeung. All rights reserved.
//

import Foundation
import UIKit
class Photo : NSObject, NSCoding
{
    var title : String
    var desc: String
    var picture : UIImage
    
    required init?(coder aDecoder: NSCoder)
    {
        self.title = aDecoder.decodeObject(forKey: "title") as! String
        self.desc = aDecoder.decodeObject(forKey: "desc") as! String
        self.picture = aDecoder.decodeObject(forKey: "picture") as! UIImage
    }
    
    init(_ title : String, _ desc : String, _ picture : UIImage)
    {
        self.title = title
        self.desc = desc
        self.picture = picture
    }
    
    func encode(with aCoder : NSCoder)
    {
        aCoder.encode(title, forKey: "title")
        aCoder.encode(desc, forKey: "desc")
        aCoder.encode(picture, forKey: "picture")
    }
}
