//
//  MyCanvas.swift
//  CanvasDraw
//
//  Created by Tarciso Martins Júnior on 21/06/2018.
//  Copyright © 2018 Tarciso Martins Júnior. All rights reserved.
//

import Foundation
import UIKit

class MyCanvas: UIView {
    var path = UIBezierPath()
    var startPoint = CGPoint()
    var touchPoint = CGPoint()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //NSLog("touch Began" )
        //print(event)
        let touch = touches.first
        if let point = touch?.location(in: self){
            startPoint = point
        }
        
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //NSLog("touch Moved")
        //print(event)
        let touch = touches.first
        if let point = touch?.location(in: self){
            touchPoint = point
        }
        
        path.move(to: startPoint)
        path.addLine(to: touchPoint)
        startPoint = touchPoint
        draw()
    }
    
    func draw(){
        let strokeLayer = CAShapeLayer()
        strokeLayer.fillColor = nil
        strokeLayer.strokeColor = UIColor.black.cgColor
        strokeLayer.lineWidth = 3
        strokeLayer.path = path.cgPath
        layer.addSublayer(strokeLayer)
        setNeedsDisplay()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //NSLog("touch End")
        //print(event)
    }
    
    func clear(){
        path.removeAllPoints()
        layer.sublayers = nil
        setNeedsDisplay()
    }
}
