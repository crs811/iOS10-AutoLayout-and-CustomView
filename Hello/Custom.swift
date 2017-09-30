//
//  Custom.swift
//  Hello
//
//  Created by chenr on 2017/9/25.
//  Copyright © 2017年 chenr. All rights reserved.
//

import UIKit

class Custom: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        /*画三角形*/
        //只要三个点就行跟画一条线方式一样，把三点连接起来
        if let ctx = UIGraphicsGetCurrentContext() {
            var sPoints = [CGPoint]()//坐标点
            sPoints.insert(CGPoint(x: self.frame.size.width / 2, y: 0), at: 0)
            sPoints.insert(CGPoint(x: 0, y: self.frame.size.width), at: 1)
            sPoints.insert(CGPoint(x: self.frame.size.width, y: self.frame.size.width), at: 2)
            ctx.addLines(between: sPoints)//添加线
            ctx.closePath()//封起来
            ctx.setFillColor(UIColor.blue.cgColor)
            ctx.setStrokeColor(UIColor.white.cgColor)
            ctx.setLineWidth(1)
            ctx.drawPath(using: .fillStroke)//根据坐标绘制路径
        }
    }
    

}
