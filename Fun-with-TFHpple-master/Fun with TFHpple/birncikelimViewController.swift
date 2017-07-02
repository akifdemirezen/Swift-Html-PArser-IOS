//
//  birncikelimViewController.swift
//  Fun with TFHpple
//
//  Created by akif demirezen on 02/07/2017.
//  Copyright © 2017 Epic Loot. All rights reserved.
//

import UIKit

class birncikelimViewController: UIViewController {
    @IBOutlet weak var text_bir: UILabel!

    @IBOutlet weak var text_4: UILabel!
    @IBOutlet weak var text_5: UILabel!
    @IBOutlet weak var text_3: UILabel!
    @IBOutlet weak var text_2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       
        text_bir.text = ViewController.gosterilecek_ing_listesi[0]+" -- "+ViewController.tr_kelimelist[0]
        text_2.text = ViewController.gosterilecek_ing_listesi[1]+" -- "+ViewController.tr_kelimelist[1]
        
        text_3.text = ViewController.gosterilecek_ing_listesi[2]+" -- "+ViewController.tr_kelimelist[2]
        text_4.text = ViewController.gosterilecek_ing_listesi[3]+" -- "+ViewController.tr_kelimelist[3]
        
        text_5.text = ViewController.gosterilecek_ing_listesi[4]+" -- "+ViewController.tr_kelimelist[4]
        
        
        
        
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
