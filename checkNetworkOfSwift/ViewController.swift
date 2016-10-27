//
//  ViewController.swift
//  checkNetworkOfSwift
//
//  Created by huweidong on 27/10/16.
//  Copyright © 2016年 huweidong. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let status = appDelegate.internetReach?.currentReachabilityStatus
        if status == .notReachable {
            print("對不起！不能連接網際網路，請稍後再試。")
        }else if status == .reachableViaWiFi {
            print("WIFI。")
        }else if status == .reachableViaWWAN {
            print("流量。")
        }
        _ = clsOtherFun.checkNetworkStatus(true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

