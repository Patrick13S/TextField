//
//  ViewController.swift
//  TextField
//
//  Created by Patrick Stroyan on 2/8/22.
//

import UIKit

// Corner radius extension for the button
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
    class ViewController: UIViewController
{

   
    //Declare Outlet variables to the label and text field
    //Public or Global variables this means I can use them more throughout the entire class
    
    @IBOutlet weak var labelToChange: UILabel!
 
    @IBOutlet weak var textfieldToChange: UITextField!
    
    

    
    //This function takes the text from the text field and displays it on the label when the button is pressed

    @IBAction func buttonToLabel(_ sender: Any)
    {
        //The double? Is called an optional its stores the data to the right of the double ? As default If nothing is entered.
        labelToChange.text = textfieldToChange.text ?? "Patrick"
        //A local variable can only be used in this function
        //var to = textfieldToChange.text
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

