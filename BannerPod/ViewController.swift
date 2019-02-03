//
//  ViewController.swift
//  BannerPod
//
//  Created by Nadaf on 15/01/19.
//  Copyright © 2019 Nadaf. All rights reserved.
//

import UIKit
import BannerView
class ViewController: UIViewController,BannerViewDelegate {

    @IBOutlet weak var topBannerView: BannerView!
    
    let items: [BannerItem] = [
        BannerItem.init(image: UIImage.init(named: "Banner1.jpg")),
        BannerItem.init(image: UIImage.init(named: "Banner2.jpg")),
        BannerItem.init(image: UIImage.init(named: "Banner3.jpg"))
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        topBannerView.setup(
            type: BannerViewScrollType.fromStart,
            timeForOneItem: 2,
            bannerItems: items,
            delegate: self
        )
        topBannerView.pageControl.color = UIColor.white
        topBannerView.pageControl.currentPageColor = .white
        
        
    }


}

