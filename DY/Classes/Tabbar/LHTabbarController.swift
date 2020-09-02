//
//  LHTabbarController.swift
//  DY
//
//  Created by QSHP on 2020/9/1.
//  Copyright © 2020 潘林海. All rights reserved.
//

import UIKit

class LHTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .orange
        
        addChildVC(childVC: HomeViewController(), title: "首页", image: "btn_home")
        addChildVC(childVC: LiveViewController(), title: "直播", image: "btn_column")
        addChildVC(childVC: FollowViewController(), title: "关注", image: "btn_live")
        addChildVC(childVC: ProfileViewController(), title: "我的", image: "btn_user")
    }
    
    
    func addChildVC(childVC:UIViewController,title:String,image:String) -> Void {
        
        var nomalImg = UIImage(named: image + "_normal")
        //nomalImg = nomalImg?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        var selectImg = UIImage(named: image + "_selected")
        //selectImg = selectImg?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        childVC.tabBarItem.image = nomalImg
        childVC.tabBarItem.selectedImage = selectImg
        childVC.tabBarItem.title = title
        
        let nav = LHNavgationController(rootViewController: childVC)
        
        addChild(nav)
        
    }
    

}
