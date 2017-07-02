//
//  besincimakaleViewController.swift
//  Fun with TFHpple
//
//  Created by akif demirezen on 02/07/2017.
//  Copyright © 2017 Epic Loot. All rights reserved.
//

import UIKit

class besincimakaleViewController: UIViewController {
    @IBOutlet weak var baslik5: UILabel!

    @IBOutlet weak var myscrol5: UIScrollView!
    @IBOutlet weak var icerik5: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        myscrol5.contentInset = UIEdgeInsetsMake(0,0,2500,0)
        
        icerik5.text = ViewController.gosterilecek_icerikler_listesi[4]
      
        baslik5.text = ViewController.gosterilecek_basliklar_listesi[4]
        
        
        
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
