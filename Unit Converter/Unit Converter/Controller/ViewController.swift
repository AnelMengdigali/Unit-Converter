//
//  ViewController.swift
//  Unit Converter
//
//  Created by ggg on 26.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Number1Txt: Numbertxt!
    
    @IBOutlet weak var Result1Lb: Resultlb!
    
    
    @IBOutlet weak var Clear1Bt: UIButton!
    
    @IBOutlet weak var Number2Txt: Numbertxt!
    
    @IBOutlet weak var Result2Lb: Resultlb!
    
    @IBOutlet weak var Clear2Bt: UIButton!
    
    @IBOutlet weak var Selectsc: UISegmentedControl!
    
    @IBOutlet weak var Selectsc2: UISegmentedControl!
    
    @IBOutlet weak var Unit1lb: UILabel!
    
    @IBOutlet weak var Unit2lb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = #colorLiteral(red: 0.794557965, green: 0.9764705896, blue: 0.9577335376, alpha: 1)
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y :0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.220084051, green: 0.6494834873, blue: 1, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        Number1Txt.inputAccessoryView = calcBtn
        Number2Txt.inputAccessoryView = calcBtn
        
        Result1Lb.isHidden = true
        Result2Lb.isHidden = true
        
        Clear1Bt.isHidden = true
        Clear2Bt.isHidden = true
        
        Unit1lb.isHidden = true
        Unit2lb.isHidden = true
        
    }

    @objc func calculate(){
        
        //if let is used for being sure that assigned variable is not nill:
        if let N1txt = Number1Txt.text, let N2txt = Number1Txt.text {
            
            if let N1 = Double(N1txt), let N2 = Double(N2txt) {
                
                view.endEditing(true)
                
                Clear1Bt.isHidden = false
                Clear2Bt.isHidden = false
                
                if Selectsc.selectedSegmentIndex == 0 {
                    
                    Result1Lb.isHidden = false
                    Result1Lb.text = "\(Converter.getKM(forConvert: N1))"
                    
                    Unit1lb.isHidden = false
                    Unit1lb.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                    Unit1lb.text = "Kilometer"
                    
                }
                
                if Selectsc.selectedSegmentIndex == 1 {
                    
                    Result1Lb.isHidden = false
                    Result1Lb.text = "\(Converter.getML(forConvert: N1))"
                    
                    Unit1lb.isHidden = false
                    Unit1lb.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                    Unit1lb.text = "Miles"
                    
                }
                
                if Selectsc2.selectedSegmentIndex == 0 {
                    
                    Result2Lb.isHidden = false
                    Result2Lb.text = "\(Converter.getKG(forConvert: N2))"
                    
                    Unit1lb.isHidden = false
                    Unit1lb.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                    Unit1lb.text = "Kilogram"
                    
                }
                if Selectsc2.selectedSegmentIndex == 0 {
                    
                    Result2Lb.isHidden = false
                    Result2Lb.text = "\(Converter.getPD(forConvert: N2))"
                    
                    Unit1lb.isHidden = false
                    Unit1lb.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                    Unit1lb.text = "Pound"
                    
                }
                
            }
            
        }
        
    }

    @IBAction func Clear1btn(_ sender: Any) {
        
        Number1Txt.text = ""
        Number2Txt.text = ""
        
        Result1Lb.isHidden = true
        Result2Lb.isHidden = true
        
    }
    
    @IBAction func Clear2btn(_ sender: Any) {
    
        Number1Txt.text = ""
        Number2Txt.text = ""
        
        Result1Lb.isHidden = true
        Result2Lb.isHidden = true
        
    }
    
}

