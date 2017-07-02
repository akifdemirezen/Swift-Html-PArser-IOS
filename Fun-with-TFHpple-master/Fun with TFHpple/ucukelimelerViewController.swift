//
//  ucukelimelerViewController.swift
//  Fun with TFHpple
//
//  Created by akif demirezen on 02/07/2017.
//  Copyright © 2017 Epic Loot. All rights reserved.
//

import UIKit

class ucukelimelerViewController: UIViewController {
    @IBOutlet weak var k_5: UILabel!
    @IBOutlet weak var k_2: UILabel!

    @IBOutlet weak var k_4: UILabel!
    @IBOutlet weak var k_3: UILabel!
    @IBOutlet weak var k_1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

      
        k_1.text = ViewController.gosterilecek_ing_listesi[10]+" -- "+ViewController.tr_kelimelist[10]
        k_2.text = ViewController.gosterilecek_ing_listesi[11]+" -- "+ViewController.tr_kelimelist[11]
        
        k_3.text = ViewController.gosterilecek_ing_listesi[12]+" -- "+ViewController.tr_kelimelist[12]
        k_4.text = ViewController.gosterilecek_ing_listesi[13]+" -- "+ViewController.tr_kelimelist[13]
        
        k_5.text = ViewController.gosterilecek_ing_listesi[14]+" -- "+ViewController.tr_kelimelist[14]
        
        
        
        
        
        
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
