//
//  ViewController.swift
//  CanvasDraw
//
//  Created by Tarciso Martins Júnior on 21/06/2018.
//  Copyright © 2018 Tarciso Martins Júnior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var btnClear: UIButton!
    @IBOutlet weak var canvasView: MyCanvas!
    
    @IBAction func btnClearClick(_ sender: Any) {
        canvasView.clear()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSetBackgroundClick(_ sender: Any) {
        
        canvasView.backgroundColor = UIColor(patternImage: UIImage(named: "horse.jpg")!)
        
    }
    @IBAction func clearBackgroundClick(_ sender: Any) {
        canvasView.backgroundColor = nil
    }
    
}

