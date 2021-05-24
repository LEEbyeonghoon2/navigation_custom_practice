//
//  ViewController.swift
//  navigation_custom
//
//  Created by 이병훈 on 2021/05/24.
//

import UIKit

class customNC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.setNC()
        self.setNCBI()
    }
    
    func setNC() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        
        view.backgroundColor = .brown
        view.layer.borderWidth = 3
        
        let label = UILabel(frame: CGRect(x: 50, y: 15, width: 100, height: 20))
        
        label.text = "요기가 내비게이션 타이틀~"
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.textAlignment = .center
        label.tintColor = UIColor.black
        label.sizeToFit()
        
        view.addSubview(label)
        
        self.navigationItem.titleView = view
    }
    
    func setNCBI() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        view.backgroundColor = .red
        view.layer.borderWidth = 2
        
        let leftBarBtn = UIBarButtonItem(customView: view)
        
        let rightView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        rightView.backgroundColor = .blue
        rightView.layer.borderWidth = 2
        
        let rightBtn = UIBarButtonItem(customView: rightView)
        
        self.navigationItem.rightBarButtonItem = rightBtn
        self.navigationItem.leftBarButtonItem = leftBarBtn
    }


}
