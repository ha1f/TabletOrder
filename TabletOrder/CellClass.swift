//
//  CellClass.swift
//  TabletOrder
//
//  Created by 山口 智生 on 2015/04/16.
//  Copyright (c) 2015年 NextVanguard. All rights reserved.
//

import Foundation
import UIKit


//ジャンル
class GenreCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    
}


//アイテム
class ItemCell: UICollectionViewCell{
    @IBOutlet weak var pictureView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
}


class SectionHeader: UICollectionReusableView {
    @IBOutlet weak var sectionNameLabel: UILabel!
}
