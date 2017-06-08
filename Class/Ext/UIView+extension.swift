//
//  UIView+extension.swift
//  XExtension_Swift
//
//  Created by 关伟洪 on 2017/6/8.
//  Copyright © 2017年 关伟洪. All rights reserved.
//

import UIKit

extension UIView {
    //MARK: 属性
    /// **x** 坐标 （即左上角的**x**坐标）
    var x:CGFloat{
        get{
            return self.frame.origin.x;
        }
        set{
            self.frame.origin.x = newValue;
        }
    }
    /// **y** 坐标 （即:左上角的**y**坐标）
    var y:CGFloat{
        get{
            return self.frame.origin.y;
        }
        set{
            self.frame.origin.y = newValue;
        }
    }
    /// - 中心点的**x**坐标
    var centerX:CGFloat{
        get{
            return self.center.x;
        }
        set{
            self.center.x = newValue;
        }
    }
    /// - 中心点的**Y**坐标
    var centerY:CGFloat{
        get{
            return self.center.y;
        }
        set{
            self.center.y = newValue;
        }
    }
    ///  左边 >> 左边的 **x**坐标
    var left:CGFloat{
        get{
            return self.x;
        }
        set{
            self.x = newValue;
        }
    }
    /// 顶部 >> 即：**y**坐标
    var top:CGFloat{
        get{
            return self.y;
        }
        set{
            self.y = newValue;
        }
    }
    /// 右边
    var right:CGFloat{
        get{
            return self.x + self.bounds.size.width;
        }
        set{
            self.x = newValue - self.bounds.size.width;
        }
    }
    /// 底部
    var bottom:CGFloat{
        get{
            return self.y + self.bounds.size.height;
        }
        set{
            self.y = newValue - self.bounds.size.height;
        }
    }
    /// 宽度
    var width:CGFloat{
        get{
            return self.bounds.size.width;
        }
        set{
            self.bounds.size.width = newValue;
        }
    }
    /// 高度
    var height:CGFloat{
        get{
            return self.bounds.size.height;
        }
        set{
            self.bounds.size.height = newValue;
        }
    }
    
    
    /**
     设置圆角
     */
    var cornerRadius:CGFloat{
        get{
            return self.layer.cornerRadius;
        }
        set{
            self.layer.cornerRadius = newValue;
            self.layer.masksToBounds = true;
        }
    }
    
    
    
}
