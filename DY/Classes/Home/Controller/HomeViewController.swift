//
//  HomeViewController.swift
//  DY
//
//  Created by QSHP on 2020/9/1.
//  Copyright © 2020 潘林海. All rights reserved.
//

import UIKit

class HomeViewController: LHViewController {

    private lazy var pageTitleView: PageTitleView = {[weak self] in
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView(frame: CGRect(x: 0, y: kNavigationBarH, width: kScreenW, height: 40), titles: titles)
        return titleView
    }()
    
    lazy var pageContentView: PageContentView = {[weak self] in
        
        var childvc = [UIViewController]()
        childvc.append(RecommandViewController())
        childvc.append(GameViewController())
        childvc.append(EntertainmentVC())
        childvc.append(FunViewController())
        
        let contentView = PageContentView(frame: CGRect(x: 0, y: kNavigationBarH+40, width: kScreenW, height: kScreenH-kNavigationBarH-40-kTabBarH), childVcs: childvc, parentVc: self)
        return contentView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configerUI()
    }

}

extension HomeViewController {
    
    private func configerUI() -> Void {
        
        setNavigationBar()
        
        view.addSubview(pageTitleView)
        
        view.addSubview(pageContentView)
    }

    func setNavigationBar() -> Void {
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo", viewController: self, selector: #selector(logoAction))
        
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: CGSize(width: 40, height: 40), viewController: self, selector: #selector(historyAction))
        
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: CGSize(width: 40, height: 40), viewController: self, selector: #selector(searchAction))
        
        let scanItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: CGSize(width: 40, height: 40), viewController: self, selector: #selector(scanAction))
        
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,scanItem]
        
    }
    
    
}
extension HomeViewController {
    @objc fileprivate func logoAction() -> Void {
        print("logo")
    }
    
    @objc fileprivate func historyAction() -> Void {
        print("history")
    }
    
    @objc fileprivate func scanAction() -> Void {
        print("scan")
    }
    
    @objc fileprivate func searchAction() -> Void {
        print("search")
    }
}
