//
//  dorduncukelimelerViewController.swift
//  Fun with TFHpple
//
//  Created by akif demirezen on 02/07/2017.
//  Copyright © 2017 Epic Loot. All rights reserved.
//

import UIKit

class dorduncukelimelerViewController: UIViewController {
    @IBOutlet weak var q_4: UILabel!
    @IBOutlet weak var q_2: UILabel!
    @IBOutlet weak var q_3: UILabel!
    @IBOutlet weak var q_5: UILabel!
    @IBOutlet weak var q_1: UILabel!
      override func viewDidLoad() {
        super.viewDidLoad()

        
        q_1.text = ViewController.gosterilecek_ing_listesi[15]+" -- "+ViewController.tr_kelimelist[15]
        q_2.text = ViewController.gosterilecek_ing_listesi[16]+" -- "+ViewController.tr_kelimelist[16]
        
        q_3.text = ViewController.gosterilecek_ing_listesi[17]+" -- "+ViewController.tr_kelimelist[17]
        q_4.text = ViewController.gosterilecek_ing_listesi[18]+" -- "+ViewController.tr_kelimelist[18]
        
        q_5.text = ViewController.gosterilecek_ing_listesi[19]+" -- "+ViewController.tr_kelimelist[19]
        
        
        
        
        
        
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
