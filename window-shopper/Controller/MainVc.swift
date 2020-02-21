//
//  ViewController.swift
//  window-shopper
//
//  Created by Mostafa Ashraf on 2/18/20.
//  Copyright © 2020 Mostafa Ashraf. All rights reserved.
//

import UIKit

class MainVc: UIViewController {

    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var wageTxt: currencyTxtField!
    @IBOutlet weak var priceTxt: currencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // let create button programmaticly
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9740932642, green: 0.5632719226, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculator", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVc.calculate), for: .touchUpInside)
         wageTxt.inputAccessoryView = calcBtn
         priceTxt.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }	
    @objc func calculate()
    {
       if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text
       {
        if let wage = Double(wageTxt) , let price = Double(priceTxt)
        {
            view.endEditing(true)
            resultLbl.isHidden = false
            hoursLbl.isHidden = false
            resultLbl.text = String (Wage.getHours(forWage: wage, andprice: price))
        }
        }
    }
    
    @IBAction func clearCalculator(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        		
        
    }
    

}

