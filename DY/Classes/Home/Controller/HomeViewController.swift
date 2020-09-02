//
//  HomeViewController.swift
//  DY
//
//  Created by QSHP on 2020/9/1.
//  Copyright © 2020 潘林海. All rights reserved.
//

import UIKit

class HomeViewController: LHViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configerUI()
    }

}

extension HomeViewController {
    
    private func configerUI() -> Void {
        
        setNavigationBar()
        
        
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
