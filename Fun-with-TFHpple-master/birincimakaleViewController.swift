//
//  birincimakaleViewController.swift
//  Fun with TFHpple
//
//  Created by akif demirezen on 02/07/2017.
//  Copyright © 2017 Epic Loot. All rights reserved.
//

import UIKit

class birincimakaleViewController: UIViewController {

    
    @IBOutlet weak var myscrol: UITextView!
   
    @IBOutlet weak var iceriktext: UITextView!
    @IBOutlet weak var text1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        myscrol.contentInset = UIEdgeInsetsMake(0,0,2500,0)
        
        text1.text = ViewController.baslik_listesi[0]
        
        iceriktext.text = ViewController.gosterilecek_icerikler_listesi[0]
       
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
