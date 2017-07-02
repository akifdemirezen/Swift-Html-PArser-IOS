//
//  besincikelimelerViewController.swift
//  Fun with TFHpple
//
//  Created by akif demirezen on 02/07/2017.
//  Copyright © 2017 Epic Loot. All rights reserved.
//

import UIKit

class besincikelimelerViewController: UIViewController {
    
    
    @IBOutlet weak var z_5: UILabel!
    
    @IBOutlet weak var z_4: UILabel!
    @IBOutlet weak var z_3: UILabel!
    
    
    @IBOutlet weak var z_2: UILabel!
    @IBOutlet weak var z_1: UILabel!
     override func viewDidLoad() {
        super.viewDidLoad()

        z_1.text = ViewController.gosterilecek_ing_listesi[20]+" -- "+ViewController.tr_kelimelist[20]
        z_2.text = ViewController.gosterilecek_ing_listesi[21]+" -- "+ViewController.tr_kelimelist[21]
        
        z_3.text = ViewController.gosterilecek_ing_listesi[22]+" -- "+ViewController.tr_kelimelist[22]
        z_4.text = ViewController.gosterilecek_ing_listesi[23]+" -- "+ViewController.tr_kelimelist[23]
        
        z_5.text = ViewController.gosterilecek_ing_listesi[24]+" -- "+ViewController.tr_kelimelist[24]
        
        
        
        
        
        
        
        
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
