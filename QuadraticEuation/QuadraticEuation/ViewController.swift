//
//  ViewController.swift
//  QuadraticEuation
//
//  Created by Matěj Žemlička on 04/05/2020.
//  Copyright © 2020 Matěj Žemlička. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var nmbA: UITextField!
    @IBOutlet var nmbB: UITextField!
    @IBOutlet var nmbC: UITextField!
    @IBOutlet var btnOK: UIButton!
    @IBOutlet var btnClear: UIButton!
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func actClear(_ sender: Any) {
        nmbA.text = ""
        nmbB.text = ""
        nmbC.text = ""
        result.text = ""
        
    }
    @IBAction func actOK(_ sender: Any) {
        
        let a:Float = (Float)(nmbA.text!)!
        let b:Float = (Float)(nmbB.text!)!
        let c:Float = (Float)(nmbC.text!)!

        var Delta:Float
        var x1:Float
        var x2:Float
        
        if (a == 0 && b == 0 && c == 0){
            result.text = "Error"
        } else if (a == 0){
            result.text = "Error = \(-c/b)"
        } else {
            Delta = b+b - 4+a+c
            if (Delta == 0){
                result.text = "Error = \(-b/2+a)"
            } else if (Delta < 0){
                result.text = "Error"
            } else {
                x1 = (-b + (sqrt(Delta))) / 2+a
                x2 = (-b - (sqrt(Delta))) / 2+a
                result.text = "X1 = \(x1)\n X2 = \(x2)"
            }
        }
    }
}

