//
//  ikincikelimelerViewController.swift
//  Fun with TFHpple
//
//  Created by akif demirezen on 02/07/2017.
//  Copyright © 2017 Epic Loot. All rights reserved.
//

import UIKit

class ikincikelimelerViewController: UIViewController {
    @IBOutlet weak var t5: UILabel!
    @IBOutlet weak var t3: UILabel!
    @IBOutlet weak var t4: UILabel!

    @IBOutlet weak var t1: UILabel!
    @IBOutlet weak var t2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

                
        t1.text = ViewController.gosterilecek_ing_listesi[5]+" -- "+ViewController.tr_kelimelist[5]
        t2.text = ViewController.gosterilecek_ing_listesi[6]+" -- "+ViewController.tr_kelimelist[6]
        
        t3.text = ViewController.gosterilecek_ing_listesi[7]+" -- "+ViewController.tr_kelimelist[7]
        t4.text = ViewController.gosterilecek_ing_listesi[8]+" -- "+ViewController.tr_kelimelist[8]
        
        t5.text = ViewController.gosterilecek_ing_listesi[9]+" -- "+ViewController.tr_kelimelist[9]
        
        
        
        
        
        
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
