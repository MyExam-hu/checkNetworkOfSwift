//
//  clsOtherFun.swift
//  checkNetworkOfSwift
//
//  Created by huweidong on 27/10/16.
//  Copyright © 2016年 huweidong. All rights reserved.
//

import UIKit

class clsOtherFun: NSObject {
    
    class func checkNetworkStatus(_ isShowMsg:Bool) -> Bool {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let status = appDelegate.internetReach?.currentReachabilityStatus
        if status == .notReachable {
            if isShowMsg {
                self.showNoNetworkMsg()
            }
            return false
        }
        return true
    }
    
    class func showNoNetworkMsg() -> Void {
        let alert = UIAlertView(title: "提示", message: "對不起 ! 不能連接網際網路,請稍後再試.", delegate: nil, cancelButtonTitle: "OK")
        alert.show()
//        let delegate = UIApplication.shared.delegate as! AppDelegate
//        let alert = UIAlertController(title: "提示", message: "對不起 ! 不能連接網際網路,請稍後再試.", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler:nil))
//        alert.show((delegate.window?.rootViewController)! , sender: nil)
    }
}
