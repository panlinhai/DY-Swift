//
//  UIBarButtonItem-Extention.swift
//  DY
//
//  Created by QSHP on 2020/9/2.
//  Copyright © 2020 潘林海. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {
    /*
    //方法一：类方法
    class func createItem(imageName:String,highImageName:String,size:CGSize) -> UIBarButtonItem {
        
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: UIControl.State.normal)
        btn.setImage(UIImage(named: highImageName), for: UIControl.State.highlighted)
        
        let barItem = UIBarButtonItem(customView: btn)
        
        return barItem
    }
    */
    
    // 方法二：构造函数
    // 便利构造函数: 1> 以 convenience 开头   2> 在构造函数中必须明确调用一个设计的构造函数(self)
    /// 自定义按钮
    /// - Parameters:
    ///   - imageName: 正常按钮图片名
    ///   - highImageName: 高亮状态下的图片名
    ///   - size: 按钮大小
    ///   - viewController: 控制器
    ///   - selector: 点击方法
    convenience init(imageName:String, highImageName:String = "", size:CGSize = CGSize.zero, viewController:UIViewController, selector:Selector) {
        
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: UIControl.State.normal)
        
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: UIControl.State.highlighted)
        }
        
        if size == CGSize.zero {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        self.init(customView:btn)
    }
}
