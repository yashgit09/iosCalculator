//
//  ViewController.swift
//  calculator
//
//  Created by user213883 on 2/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calworking: UILabel!
    @IBOutlet weak var calresult: UILabel!
    
  
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }
    
  
    func clearAll(){
        workings=""
        calworking.text=""
        calresult.text=""
        
    }
    
    @IBAction func equal(_ sender: Any) {
 
         
            if !workings.contains(".")
        {
            let appendnum = ".00"
             workings = workings + appendnum
        }
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResults(result: result)
        calresult.text = resultString

        
    }
    
    func formatResults(result: Double)-> String{
        if(result.truncatingRemainder(dividingBy: 1)==0)
        {
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.2f", result)
        }
        
    }
    
    @IBAction func allclear(_ sender: Any) {
        clearAll()
    }
    
    
    @IBAction func backspace(_ sender: Any) {
        if(!workings.isEmpty){
            workings.removeLast()
            calworking.text = workings
        }
    }
    
  
    func addToWorkings(value : String){
        workings = workings + value
        calworking.text = workings
        
    }
    
    @IBAction func percent(_ sender: Any) {
        addToWorkings(value : "/100")
    }

    
    @IBAction func divide(_ sender: Any) {
        addToWorkings(value : "/")
    }
    
    @IBAction func multiply(_ sender: Any) {
        addToWorkings(value : "*")
    }
     
    @IBAction func minus(_ sender: Any) {
        addToWorkings(value : "-")
    }
    
    @IBAction func add(_ sender: Any) {
            addToWorkings(value : "+")
    }
    
    
    @IBAction func zero(_ sender: Any) {
        addToWorkings(value : "0")
    }
    
    @IBAction func decimal(_ sender: Any) {
       
            addToWorkings(value : ".")
        
    }
    
    @IBAction func one(_ sender: Any) {
        addToWorkings(value : "1")
    }
    
    @IBAction func two(_ sender: Any) {
        addToWorkings(value : "2")
    }
    
    @IBAction func three(_ sender: Any) {
        addToWorkings(value : "3")
    }
    
    @IBAction func four(_ sender: Any) {
        addToWorkings(value : "4")
    }
    
    @IBAction func five(_ sender: Any) {
        addToWorkings(value : "5")
    }
    
    @IBAction func six(_ sender: Any) {
        addToWorkings(value : "6")
    }
    
    @IBAction func seven(_ sender: Any) {
        addToWorkings(value : "7")
    }
    
    @IBAction func eight(_ sender: Any) {
        addToWorkings(value : "8")
    }
    
    @IBAction func nine(_ sender: Any) {
        addToWorkings(value : "9")
    }
    
    
}

