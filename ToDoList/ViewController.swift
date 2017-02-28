//
//  ViewController.swift
//  ToDoList
//
//  Created by Jessica Ellison on 2/27/17.
//  Copyright © 2017 JessCodes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var txtInput: UITextField!
  @IBOutlet weak var txtOutput: UITextView!

  var items:[String] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func addItem(_ sender: Any) {
    if (txtInput.text! == "") {
      return
    }
    items.append(txtInput.text!)
    txtOutput.text = ""
    for item in items{
      txtOutput.text.append("\(item)\n")
    }
    txtInput.text = ""
    txtInput.resignFirstResponder()
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

