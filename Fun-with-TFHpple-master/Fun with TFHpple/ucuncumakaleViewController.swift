//
//  ucuncumakaleViewController.swift
//  Fun with TFHpple
//
//  Created by akif demirezen on 02/07/2017.
//  Copyright © 2017 Epic Loot. All rights reserved.
//

import UIKit

class ucuncumakaleViewController: UIViewController {
    @IBOutlet weak var myscrol3: UIScrollView!
    @IBOutlet weak var baslik: UILabel!

    @IBOutlet weak var icerik3: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        baslik.text = ViewController.baslik_listesi[3]
        
        icerik3.text = ViewController.gosterilecek_icerikler_listesi[2]
        
        myscrol3.contentInset = UIEdgeInsetsMake(0,0,02500,0)
        
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
