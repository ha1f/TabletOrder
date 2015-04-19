//
//  DataModel.swift
//  TabletOrder
//
//  Created by 山口 智生 on 2015/04/20.
//  Copyright (c) 2015年 NextVanguard. All rights reserved.
//

import Foundation
import UIKit

class DataModel:NSObject{
    var genres:[String]=["おすすめ","TOP5","フード","ドリンク","その他"]
    
    var shops = [
        [
            (name: "珍遊", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "びし屋", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "高安", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "天天有", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "恵那く", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "横綱", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "極鶏", icon:UIImage(named:"IMG_2300.JPG"))],
        [
            (name: "マクド", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "モス", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "ロッテリア", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "バーガーキング", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "佐世保バーガー", icon:UIImage(named:"IMG_2300.JPG"))],
        [
            (name: "ハンバーガー", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "これ", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "珍遊", icon:UIImage(named:"IMG_2300.JPG"))],
        [
            (name: "ジントニック", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "カシスオレンジ", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "モスコミュール", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "カシスウーロン", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "ピーチウーロン", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "ギムレット", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "ファジーネーブル", icon:UIImage(named:"IMG_2300.JPG"))],
        [
            (name: "水", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "箸", icon:UIImage(named:"IMG_2300.JPG")),
            (name: "スマイル", icon:UIImage(named:"IMG_2300.JPG"))]
    ]
}