//
//  ikinciMakaleViewController.swift
//  Fun with TFHpple
//
//  Created by akif demirezen on 02/07/2017.
//  Copyright © 2017 Epic Loot. All rights reserved.
//

import UIKit

class ikinciMakaleViewController: UIViewController {

    @IBOutlet weak var icerik2: UITextView!
    @IBOutlet weak var myscrol2: UIScrollView!
    @IBOutlet weak var text2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       
        text2.text = ViewController.baslik_listesi[2]
        
        
        icerik2.text = ViewController.gosterilecek_icerikler_listesi[1]
        
        
        myscrol2.contentInset = UIEdgeInsetsMake(0,0,2500,0)
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
