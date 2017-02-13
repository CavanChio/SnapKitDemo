//
//  BasicViewController.swift
//  SnapKit
//
//  Created by Cavan on 2017/2/13.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit
//import SnapKit

class BasicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "BasicFuncs"
        
        self.setUI()
    }

    func setUI() {
        let baseView = UIView()
        baseView.backgroundColor = UIColor.white
        self.view.addSubview(baseView)
        
//        baseView.
        
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
