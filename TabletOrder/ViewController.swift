//
//  ViewController.swift
//  TabletOrder
//
//  Created by 山口 智生 on 2015/04/16.
//  Copyright (c) 2015年 NextVanguard. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    
    @IBOutlet weak var genreView: UITableView!
    
    @IBOutlet weak var itemView: UICollectionView!
    
    var dataModel: DataModel = DataModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        genreView.delegate=self
        genreView.dataSource=self
        
        itemView.dataSource=self
        itemView.delegate=self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func callClerk(sender: AnyObject) {
    }
    
    
    
}

extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let myCell:ItemCell = collectionView.dequeueReusableCellWithReuseIdentifier("itemcell", forIndexPath: indexPath) as! ItemCell
        
        myCell.nameLabel.text=dataModel.shops[indexPath.section][indexPath.row].name
        myCell.pictureView.image=dataModel.shops[indexPath.section][indexPath.row].icon
        return myCell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return dataModel.genres.count
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModel.shops[section].count;
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("item: \(dataModel.genres[indexPath.section]),\(dataModel.shops[indexPath.section][indexPath.row].name)")
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        var myheader: SectionHeader = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "sectionheader", forIndexPath: indexPath) as! SectionHeader
        myheader.sectionNameLabel.text = dataModel.genres[indexPath.section]
        return myheader
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    // セクション数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    // セクションの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.genres.count
    }
    // セクション高さ
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    // セル表示
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        //cell deque
        let myCell: GenreCell = tableView.dequeueReusableCellWithIdentifier("genrecell", forIndexPath: indexPath) as! GenreCell
        myCell.nameLabel.text = dataModel.genres[indexPath.row]
        
        return myCell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("genre:\(dataModel.genres[indexPath.row])")
        itemView.scrollToItemAtIndexPath(NSIndexPath(forRow: 0, inSection: indexPath.row), atScrollPosition: UICollectionViewScrollPosition.CenteredVertically, animated: true)
    }
}

