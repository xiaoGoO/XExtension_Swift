//
//  ViewController.swift
//  XExtension_Swift
//
//  Created by 关伟洪 on 2017/6/8.
//  Copyright © 2017年 关伟洪. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: >>>>>>  UI  <<<<<<<
    private func initUI(){
        let v = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 200));
        v.backgroundColor = UIColor.black;
        self.view.addSubview(v);
        
        v.left = 100;
        v.top = 200;
        
        
        let btn = UIButton();
        btn.backgroundColor = UIColor.blue;
        btn.setTitleColor(UIColor.white, for: UIControlState.normal);
        btn.setTitle("点我呀", for: .normal);
        self.view.addSubview(btn);
        
        btn.width = 100;
        btn.height = 30;
        btn.centerX = self.view.width/2;
        btn.top = v.bottom+10;
       
        
        
        btn.clickBlock = {(btn:UIButton) in
            print("哈哈哈哈哈哈");
        };
        
        btn.clickBlock?(btn);
    }
    

}

