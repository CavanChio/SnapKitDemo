//
//  BasicViewController.swift
//  SnapKit
//
//  Created by Cavan on 2017/2/13.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit
import SnapKit

class BasicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "BasicFuncs"
        
        self.setUI()
    }

    func setUI() {
        let baseView = UIView()
        baseView.backgroundColor = UIColor.red
        self.view.addSubview(baseView)
        //布局背景
        baseView.snp.remakeConstraints { (make) in
            make.edges.equalTo(self.view).inset(UIEdgeInsetsMake(84, 20, 20, 20))
        }
        
        for index in 1...5 {
            let aView = UIView()
            let red = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let green = CGFloat( arc4random_uniform(255))/CGFloat(255.0)
            let blue = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            aView.backgroundColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1)
            self.view.addSubview(aView)
            aView.snp.makeConstraints({ (make) in
                make.center.equalTo(baseView)
                make.left.equalTo(baseView).offset((20*index))
                make.top.equalTo(baseView).offset((20*index))
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
