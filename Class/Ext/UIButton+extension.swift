//
//  UIButton+extsion.swift
//  MySwift
//
//  Created by 关伟洪 on 2017/6/7.
//  Copyright © 2017年 关伟洪. All rights reserved.
//

import UIKit



extension UIButton {
    
    
    
    //MARK:>>>>>>>>> 数据
    ///用于存放绑定属性的Key值
    struct UIButtonKey {
        static var onClickKey = "onClickKey"
    }
    /**
     点击事件回调
     - Parameters:
       - UIButton: 触发的按钮
     */
    typealias OnClickBlock = (UIButton) ->Void;
    
    
    //MARK:>>>>>>>>  属性
    
    /**
     - 添加点击事件回调
        - **注意**：当控件被调用 func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) 方法后，该回调将会被失效
     
     */
    var clickBlock:OnClickBlock?{
        get{
            guard let block:OnClickBlock = objc_getAssociatedObject(self, &UIButtonKey.onClickKey) as? OnClickBlock else {
                return nil;
            }
            return block;
        }
        set{
            objc_setAssociatedObject(self, &UIButtonKey.onClickKey, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC);
            if newValue != nil {
                self.addTarget(action: #selector(UIButton.onClick(_:)), for: UIControlEvents.touchUpInside);
            }else{
                self.removeTarget(self, action: #selector(UIButton.onClick(_:)), for: UIControlEvents.touchUpInside);
            }
        }
    
    }
    
    /**
     **该方法用于给自己添加事件**
     - Parameters:
        - action: Selector 事件回调的方法
        - controlEvents: 事件类型
     
     */
    private func addTarget(action: Selector, for controlEvents: UIControlEvents) {
        super.addTarget(self, action: action, for: controlEvents);
    }
    
    
    //MARK:>>>>>>>>>>>  覆盖
    
    /**
     * 添加事件
     * 该方法不可与 setOnClick 重复使用
     *
     */
    open override func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) {
        super.addTarget(target, action: action, for: controlEvents);
    }
    
    //MARK: Action
    
    /**
      拦截自身的点击事件
      - Parameters:
        - btn: 触发按钮
     */
    func onClick(_ btn:UIButton){
        self.clickBlock?(btn);
    }

}
