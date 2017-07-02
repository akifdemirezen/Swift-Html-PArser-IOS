//
//  ViewController.swift
//  Fun with TFHpple
//
//  Created by John Pavley on 5/21/16.
//  Copyright © 2016 Epic Loot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    public static var encok_kelimeler_listesi = [String]()
    public static var tr_kelimelist=[String]()
    public static var tr_encok_kelimeler_listesi = [String]()
    public static var ayrilan_kelimeler_listesi1 = [String]()
    public static var ayrilan_kelimeler_listesi2 = [String]()
    public static var ayrilan_kelimeler_listesi3 = [String]()
    public static var ayrilan_kelimeler_listesi4 = [String]()
    public static var ayrilan_kelimeler_listesi5 = [String]()
    public static  var baslik_listesi = [String]()
    public static  var link_listesi = [String]()
    
    public static var gosterilecek_basliklar_listesi=[String]()
    public static var gosterilecek_icerikler_listesi=[String]()
    public static var gosterilecek_ing_listesi=[String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
                // Do any additional setup after loading the view, typically from a nib.
        
    // Ana Linkleri Alma
        let data = try? Data(contentsOf: URL(string: "http://www.wired.com")!)
        let doc = TFHpple(htmlData: data)
        
        if  let baslik_elements = doc?.search(withXPathQuery: "//h2") as? [TFHppleElement] {
        
           
            
            for element in baslik_elements{
            
            ViewController.baslik_listesi.append(element.content)
            
            }
        
        
        
        }
        
        if  let link_elements = doc?.search(withXPathQuery: "//div[@class='homepage-main']//a/@href") as? [TFHppleElement] {
       

            for element in link_elements {
               
               ViewController.link_listesi.append(element.content)
               
                /*
                 ilk link 2
                 ikinci link 9
                 üçüncü link 12
                 dördüncü link 17
                 beşinci link 22
                 
                 */
                
            }
        }
           /* print(ViewController.baslik_listesi[0])
            print(ViewController.link_listesi[1])
            print(ViewController.baslik_listesi[2])
            print(ViewController.link_listesi[9])
            print(ViewController.baslik_listesi[3])
            print(ViewController.link_listesi[12])
            print(ViewController.baslik_listesi[4])
            print(ViewController.link_listesi[17])
            print(ViewController.baslik_listesi[5])
            print(ViewController.link_listesi[20])
        */
 
  
        
 
    // İlk Sayfaya Gitme
          var birinci_makale = String() ;
            let ilklink = "https://www.wired.com"+ViewController.link_listesi[1]
            
         let birinci_sayfa = try? Data(contentsOf: URL(string:ilklink)!)
            
         let doc_birinci = TFHpple(htmlData: birinci_sayfa)
        
        if  let birinci_sayfa_elements = doc_birinci?.search(withXPathQuery: "//body//p") as? [TFHppleElement] {
            
    
            for element in birinci_sayfa_elements {
                
                birinci_makale += element.content
                
            }
        }
       
        
        ViewController.gosterilecek_icerikler_listesi.append(birinci_makale)
        
        
       
        
        
        // İkinci Sayfaya Gitme
        var ikinci_makale = String() ;
        
        let ikinci_link = "https://www.wired.com"+ViewController.link_listesi[9]
        
        let ikinci_sayfa = try? Data(contentsOf: URL(string:ikinci_link)!)
        
        let doc_ikinci = TFHpple(htmlData: ikinci_sayfa)
        
        if  let ikinci_sayfa_elements = doc_ikinci?.search(withXPathQuery: "//body//p") as? [TFHppleElement] {
            
            for element in ikinci_sayfa_elements {
        
                ikinci_makale += element.content
                
             
                
                
            }
         ViewController.gosterilecek_icerikler_listesi.append(ikinci_makale)        }
    
    // Üçüncü Sayfaya Gitme
   
    var ucuncu_makale = String() ;
    
    let ucuncu_link = "https://www.wired.com"+ViewController.link_listesi[12]
    
    let ucuncu_sayfa = try? Data(contentsOf: URL(string:ucuncu_link)!)
    
    let doc_ucuncu = TFHpple(htmlData: ucuncu_sayfa)
    
    if  let ucuncu_sayfa_elements = doc_ucuncu?.search(withXPathQuery: "//body//p") as? [TFHppleElement] {
        
        for element in ucuncu_sayfa_elements {
            
            ucuncu_makale += element.content
            
            
            
            
        }
        
        ViewController.gosterilecek_icerikler_listesi.append(ucuncu_makale)
}
 
        // Dorduncu Sayfaya Gitme
        
        var dorduncu_makale = String() ;
        
        let dorduncu_link = "https://www.wired.com"+ViewController.link_listesi[17]
        
        let dorduncu_sayfa = try? Data(contentsOf: URL(string:dorduncu_link)!)
        
        let doc_dorduncu = TFHpple(htmlData: dorduncu_sayfa)
        
        if  let dorduncu_sayfa_elements = doc_dorduncu?.search(withXPathQuery: "//body//p") as? [TFHppleElement] {
            
            for element in dorduncu_sayfa_elements {
                
                dorduncu_makale += element.content
                
                
                
                
            }
          ViewController.gosterilecek_icerikler_listesi.append(dorduncu_makale)
        }
        
        // Beşinci Sayfaya Gitme
        
        var besinci_makale = String()
        
        let besinci_link = "https://www.wired.com"+ViewController.link_listesi[20]
        
        let besinci_sayfa = try? Data(contentsOf: URL(string:besinci_link)!)
        
        let doc_besinci = TFHpple(htmlData: besinci_sayfa)
        
        if  let besinci_sayfa_elements = doc_besinci?.search(withXPathQuery: "//body//p") as? [TFHppleElement] {
            
            for element in besinci_sayfa_elements {
                
                besinci_makale += element.content
                
                
                
                
            }
         
      
          ViewController.gosterilecek_icerikler_listesi.append(besinci_makale)
        
        }
        
        //*****************1.Makale İçin yapılan
        
        var sayi:Int;
        //1. Kelime Bulma
        ViewController.ayrilan_kelimeler_listesi1 = birinci_makale.components(separatedBy: " ")
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi1))
        
        sayi = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi1)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi1.count-1{
            
            if ViewController.ayrilan_kelimeler_listesi1[j] == ViewController.encok_kelimeler_listesi[0] {
                
                
                ViewController.ayrilan_kelimeler_listesi1[j] = ""
                
                
            }//if kapanış
            
        }
        
        
        //2.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi2 = ViewController.ayrilan_kelimeler_listesi1
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        sayi = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi2)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi2.count-sayi-1{
            
            if ViewController.ayrilan_kelimeler_listesi2[j] == ViewController.encok_kelimeler_listesi[1] {
                
                
                ViewController.ayrilan_kelimeler_listesi2.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        
        
        //3.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi3 = ViewController.ayrilan_kelimeler_listesi2
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        sayi = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi3)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi3.count-sayi-1{
            
            if ViewController.ayrilan_kelimeler_listesi3[j] == ViewController.encok_kelimeler_listesi[2] {
                
                
                ViewController.ayrilan_kelimeler_listesi3.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        
        //4.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi4 = ViewController.ayrilan_kelimeler_listesi3
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        sayi = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi4)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi4.count-sayi-1{
            
            if ViewController.ayrilan_kelimeler_listesi4[j] == ViewController.encok_kelimeler_listesi[3] {
                
                
                ViewController.ayrilan_kelimeler_listesi4.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        
        //5.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi5 = ViewController.ayrilan_kelimeler_listesi4
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        sayi = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi5)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi5.count-sayi-1{
            
            if ViewController.ayrilan_kelimeler_listesi5[j] == ViewController.encok_kelimeler_listesi[4] {
                
                
                ViewController.ayrilan_kelimeler_listesi5.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        
       
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[0])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[2])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[4])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[6])
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[8])
        
        
        // Türkçe Karşılıklarını Bulma
        var k=0;
        
        while k<9{
            let ana_link = "http://tureng.com/tr/turkce-ingilizce/"+ViewController.encok_kelimeler_listesi[k]
            
            
            let tr_data = try? Data(contentsOf: URL(string:ana_link)!)
            let tr_doc = TFHpple(htmlData: tr_data)
            
            if  let tr_elements = tr_doc?.search(withXPathQuery: "//td[@class='tr ts']//a") as? [TFHppleElement] {
                
                
                
                for tr_element in tr_elements{
                    
                    ViewController.tr_encok_kelimeler_listesi.append(tr_element.content);
                }
                
                ViewController.tr_kelimelist.append(ViewController.tr_encok_kelimeler_listesi[0])
                
                
            }
            
            k=k+2
            ViewController.tr_encok_kelimeler_listesi.removeAll()
        }//for kapanış
        
        ViewController.ayrilan_kelimeler_listesi1.removeAll()
        ViewController.ayrilan_kelimeler_listesi2.removeAll()
        
        ViewController.ayrilan_kelimeler_listesi3.removeAll()
        ViewController.ayrilan_kelimeler_listesi4.removeAll()
        
        
        ViewController.ayrilan_kelimeler_listesi5.removeAll()
        
        ViewController.tr_encok_kelimeler_listesi.removeAll()
        ViewController.encok_kelimeler_listesi.removeAll()
        
        
        //***********2. için yapılan
        
        
        
        
        var sayi2:Int;
        //1. Kelime Bulma
        ViewController.ayrilan_kelimeler_listesi1 = ikinci_makale.components(separatedBy: " ")
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi1))
        
        sayi2 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi1)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi1.count-1{
            
            if ViewController.ayrilan_kelimeler_listesi1[j] == ViewController.encok_kelimeler_listesi[0] {
                
                
                ViewController.ayrilan_kelimeler_listesi1[j] = ""
                
                
            }//if kapanış
            
        }
        
        
        //2.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi2 = ViewController.ayrilan_kelimeler_listesi1
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        sayi2 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi2)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi2.count-sayi2-1{
            
            if ViewController.ayrilan_kelimeler_listesi2[j] == ViewController.encok_kelimeler_listesi[1] {
                
                
                ViewController.ayrilan_kelimeler_listesi2.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        
        
        //3.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi3 = ViewController.ayrilan_kelimeler_listesi2
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        sayi2 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi3)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi3.count-sayi2-1{
            
            if ViewController.ayrilan_kelimeler_listesi3[j] == ViewController.encok_kelimeler_listesi[2] {
                
                
                ViewController.ayrilan_kelimeler_listesi3.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        
        //4.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi4 = ViewController.ayrilan_kelimeler_listesi3
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        sayi2 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi4)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi4.count-sayi2-1{
            
            if ViewController.ayrilan_kelimeler_listesi4[j] == ViewController.encok_kelimeler_listesi[3] {
                
                
                ViewController.ayrilan_kelimeler_listesi4.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        
        //5.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi5 = ViewController.ayrilan_kelimeler_listesi4
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        sayi2 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi5)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi5.count-sayi2-1{
            
            if ViewController.ayrilan_kelimeler_listesi5[j] == ViewController.encok_kelimeler_listesi[4] {
                
                
                ViewController.ayrilan_kelimeler_listesi5.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        
        
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[0])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[2])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[4])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[6])
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[8])
        
        
        // Türkçe Karşılıklarını Bulma
        k=0;
        
        while k<9{
            let ana_link = "http://tureng.com/tr/turkce-ingilizce/"+ViewController.encok_kelimeler_listesi[k]
            
            
            let tr_data = try? Data(contentsOf: URL(string:ana_link)!)
            let tr_doc = TFHpple(htmlData: tr_data)
            
            if  let tr_elements = tr_doc?.search(withXPathQuery: "//td[@class='tr ts']//a") as? [TFHppleElement] {
                
                
                
                for tr_element in tr_elements{
                    
                    ViewController.tr_encok_kelimeler_listesi.append(tr_element.content);
                }
                
                ViewController.tr_kelimelist.append(ViewController.tr_encok_kelimeler_listesi[0])
                
                
            }
            
            k=k+2
            ViewController.tr_encok_kelimeler_listesi.removeAll()
        }//for kapanış
       
        
        
        ViewController.ayrilan_kelimeler_listesi1.removeAll()
         ViewController.ayrilan_kelimeler_listesi2.removeAll()
        
         ViewController.ayrilan_kelimeler_listesi3.removeAll()
        ViewController.ayrilan_kelimeler_listesi4.removeAll()
        
        
         ViewController.ayrilan_kelimeler_listesi5.removeAll()
        
         ViewController.tr_encok_kelimeler_listesi.removeAll()
         ViewController.encok_kelimeler_listesi.removeAll()
        
        
        
        //*****************3.için Yapılan
        
        
        
        var sayi3:Int;
        //1. Kelime Bulma
        ViewController.ayrilan_kelimeler_listesi1 = ucuncu_makale.components(separatedBy: " ")
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi1))
        
        sayi3 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi1)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi1.count-1{
            
            if ViewController.ayrilan_kelimeler_listesi1[j] == ViewController.encok_kelimeler_listesi[0] {
                
                
                ViewController.ayrilan_kelimeler_listesi1[j] = ""
                
                
            }//if kapanış
            
        }
        
        
        //2.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi2 = ViewController.ayrilan_kelimeler_listesi1
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        sayi3 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi2)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi2.count-sayi3-1{
            
            if ViewController.ayrilan_kelimeler_listesi2[j] == ViewController.encok_kelimeler_listesi[1] {
                
                
                ViewController.ayrilan_kelimeler_listesi2.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        
        
        //3.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi3 = ViewController.ayrilan_kelimeler_listesi2
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        sayi3 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi3)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi3.count-sayi3-1{
            
            if ViewController.ayrilan_kelimeler_listesi3[j] == ViewController.encok_kelimeler_listesi[2] {
                
                
                ViewController.ayrilan_kelimeler_listesi3.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        
        //4.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi4 = ViewController.ayrilan_kelimeler_listesi3
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        sayi3 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi4)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi4.count-sayi3-1{
            
            if ViewController.ayrilan_kelimeler_listesi4[j] == ViewController.encok_kelimeler_listesi[3] {
                
                
                ViewController.ayrilan_kelimeler_listesi4.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        
        //5.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi5 = ViewController.ayrilan_kelimeler_listesi4
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        sayi3 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi5)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi5.count-sayi3-1{
            
            if ViewController.ayrilan_kelimeler_listesi5[j] == ViewController.encok_kelimeler_listesi[4] {
                
                
                ViewController.ayrilan_kelimeler_listesi5.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        
        
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[0])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[2])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[4])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[6])
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[8])
        
        
        // Türkçe Karşılıklarını Bulma
        k=0;
        
        while k<9{
            let ana_link = "http://tureng.com/tr/turkce-ingilizce/"+ViewController.encok_kelimeler_listesi[k]
            
            
            let tr_data = try? Data(contentsOf: URL(string:ana_link)!)
            let tr_doc = TFHpple(htmlData: tr_data)
            
            if  let tr_elements = tr_doc?.search(withXPathQuery: "//td[@class='tr ts']//a") as? [TFHppleElement] {
                
                
                
                for tr_element in tr_elements{
                    
                    ViewController.tr_encok_kelimeler_listesi.append(tr_element.content);
                }
                
                ViewController.tr_kelimelist.append(ViewController.tr_encok_kelimeler_listesi[0])
                
                
            }
            
            k=k+2
            ViewController.tr_encok_kelimeler_listesi.removeAll()
        }//for kapanış
        
        ViewController.ayrilan_kelimeler_listesi1.removeAll()
        ViewController.ayrilan_kelimeler_listesi2.removeAll()
        
        ViewController.ayrilan_kelimeler_listesi3.removeAll()
        ViewController.ayrilan_kelimeler_listesi4.removeAll()
        
        
        ViewController.ayrilan_kelimeler_listesi5.removeAll()
        
        ViewController.tr_encok_kelimeler_listesi.removeAll()
        ViewController.encok_kelimeler_listesi.removeAll()
        
        
        //*********************4.için Yapılan
        
        
        var sayi4:Int;
        //1. Kelime Bulma
        ViewController.ayrilan_kelimeler_listesi1 = dorduncu_makale.components(separatedBy: " ")
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi1))
        
        sayi4 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi1)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi1.count-1{
            
            if ViewController.ayrilan_kelimeler_listesi1[j] == ViewController.encok_kelimeler_listesi[0] {
                
                
                ViewController.ayrilan_kelimeler_listesi1[j] = ""
                
                
            }//if kapanış
            
        }
        
        
        //2.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi2 = ViewController.ayrilan_kelimeler_listesi1
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        sayi4 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi2)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi2.count-sayi4-1{
            
            if ViewController.ayrilan_kelimeler_listesi2[j] == ViewController.encok_kelimeler_listesi[1] {
                
                
                ViewController.ayrilan_kelimeler_listesi2.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        
        
        //3.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi3 = ViewController.ayrilan_kelimeler_listesi2
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        sayi4 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi3)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi3.count-sayi4-1{
            
            if ViewController.ayrilan_kelimeler_listesi3[j] == ViewController.encok_kelimeler_listesi[2] {
                
                
                ViewController.ayrilan_kelimeler_listesi3.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        
        //4.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi4 = ViewController.ayrilan_kelimeler_listesi3
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        sayi4 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi4)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi4.count-sayi4-1{
            
            if ViewController.ayrilan_kelimeler_listesi4[j] == ViewController.encok_kelimeler_listesi[3] {
                
                
                ViewController.ayrilan_kelimeler_listesi4.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        
        //5.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi5 = ViewController.ayrilan_kelimeler_listesi4
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        sayi4 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi5)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi5.count-sayi4-1{
            
            if ViewController.ayrilan_kelimeler_listesi5[j] == ViewController.encok_kelimeler_listesi[4] {
                
                
                ViewController.ayrilan_kelimeler_listesi5.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        
        
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[0])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[2])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[4])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[6])
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[8])
        
        
        // Türkçe Karşılıklarını Bulma
        k=0;
        
        while k<9{
            let ana_link = "http://tureng.com/tr/turkce-ingilizce/"+ViewController.encok_kelimeler_listesi[k]
            
            
            let tr_data = try? Data(contentsOf: URL(string:ana_link)!)
            let tr_doc = TFHpple(htmlData: tr_data)
            
            if  let tr_elements = tr_doc?.search(withXPathQuery: "//td[@class='tr ts']//a") as? [TFHppleElement] {
                
                
                
                for tr_element in tr_elements{
                    
                    ViewController.tr_encok_kelimeler_listesi.append(tr_element.content);
                }
                
                ViewController.tr_kelimelist.append(ViewController.tr_encok_kelimeler_listesi[0])
                
                
            }
            
            k=k+2
            ViewController.tr_encok_kelimeler_listesi.removeAll()
        }//for kapanış
        
        ViewController.ayrilan_kelimeler_listesi1.removeAll()
        ViewController.ayrilan_kelimeler_listesi2.removeAll()
        
        ViewController.ayrilan_kelimeler_listesi3.removeAll()
        ViewController.ayrilan_kelimeler_listesi4.removeAll()
        
        
        ViewController.ayrilan_kelimeler_listesi5.removeAll()
        
        ViewController.tr_encok_kelimeler_listesi.removeAll()
        ViewController.encok_kelimeler_listesi.removeAll()
        
        
        
        
        
        
        
        //*************************5.için Yapılan
        
        
        
        
        var sayi5:Int;
        //1. Kelime Bulma
        ViewController.ayrilan_kelimeler_listesi1 = besinci_makale.components(separatedBy: " ")
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi1))
        
        sayi5 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi1)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi1.count-1{
            
            if ViewController.ayrilan_kelimeler_listesi1[j] == ViewController.encok_kelimeler_listesi[0] {
                
                
                ViewController.ayrilan_kelimeler_listesi1[j] = ""
                
                
            }//if kapanış
            
        }
        
        
        //2.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi2 = ViewController.ayrilan_kelimeler_listesi1
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        sayi5 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi2)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi2.count-sayi5-1{
            
            if ViewController.ayrilan_kelimeler_listesi2[j] == ViewController.encok_kelimeler_listesi[1] {
                
                
                ViewController.ayrilan_kelimeler_listesi2.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi2))
        
        
        
        //3.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi3 = ViewController.ayrilan_kelimeler_listesi2
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        sayi5 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi3)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi3.count-sayi5-1{
            
            if ViewController.ayrilan_kelimeler_listesi3[j] == ViewController.encok_kelimeler_listesi[2] {
                
                
                ViewController.ayrilan_kelimeler_listesi3.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi3))
        
        
        //4.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi4 = ViewController.ayrilan_kelimeler_listesi3
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        sayi5 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi4)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi4.count-sayi5-1{
            
            if ViewController.ayrilan_kelimeler_listesi4[j] == ViewController.encok_kelimeler_listesi[3] {
                
                
                ViewController.ayrilan_kelimeler_listesi4.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi4))
        
        
        //5.Kelimeyi Bulma
        
        ViewController.ayrilan_kelimeler_listesi5 = ViewController.ayrilan_kelimeler_listesi4
        
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        sayi5 = listeden_sayidon(liste: ViewController.ayrilan_kelimeler_listesi5)
        
        for j  in 0...ViewController.ayrilan_kelimeler_listesi5.count-sayi5-1{
            
            if ViewController.ayrilan_kelimeler_listesi5[j] == ViewController.encok_kelimeler_listesi[4] {
                
                
                ViewController.ayrilan_kelimeler_listesi5.remove(at: j)
                
            }//if kapanış
            
        }
        
        //Listeye elemanı Ekle
        ViewController.encok_kelimeler_listesi.append(listeden_kelimedon(liste: ViewController.ayrilan_kelimeler_listesi5))
        
        
        
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[0])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[2])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[4])
        
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[6])
        ViewController.gosterilecek_ing_listesi.append(ViewController.encok_kelimeler_listesi[8])
        
        
        // Türkçe Karşılıklarını Bulma
        k=0;
        
        while k<9{
            let ana_link = "http://tureng.com/tr/turkce-ingilizce/"+ViewController.encok_kelimeler_listesi[k]
            
            
            let tr_data = try? Data(contentsOf: URL(string:ana_link)!)
            let tr_doc = TFHpple(htmlData: tr_data)
            
            if  let tr_elements = tr_doc?.search(withXPathQuery: "//td[@class='tr ts']//a") as? [TFHppleElement] {
                
                
                
                for tr_element in tr_elements{
                    
                    ViewController.tr_encok_kelimeler_listesi.append(tr_element.content);
                }
                
                ViewController.tr_kelimelist.append(ViewController.tr_encok_kelimeler_listesi[0])
                
                
            }
            
            k=k+2
            ViewController.tr_encok_kelimeler_listesi.removeAll()
        }//for kapanış
        
        ViewController.ayrilan_kelimeler_listesi1.removeAll()
        ViewController.ayrilan_kelimeler_listesi2.removeAll()
        
        ViewController.ayrilan_kelimeler_listesi3.removeAll()
        ViewController.ayrilan_kelimeler_listesi4.removeAll()
        
        
        ViewController.ayrilan_kelimeler_listesi5.removeAll()
        
        ViewController.tr_encok_kelimeler_listesi.removeAll()
        ViewController.encok_kelimeler_listesi.removeAll()
        
        
                //Başlık İşlemleri
        
        
        ViewController.gosterilecek_basliklar_listesi.append( ViewController.baslik_listesi[0])
        
        ViewController.gosterilecek_basliklar_listesi.append(ViewController.baslik_listesi[2])
        
        ViewController.gosterilecek_basliklar_listesi.append(ViewController.baslik_listesi[3])
        
        ViewController.gosterilecek_basliklar_listesi.append(ViewController.baslik_listesi[4])
        
        ViewController.gosterilecek_basliklar_listesi.append(ViewController.baslik_listesi[5])
        
        
       /*
        
        print(ViewController.baslik_listesi[0])
        print("----")
        
        print(birinci_makale)
          print("----")
       
        print(ViewController.baslik_listesi[2])
      
        print("----")
        print(ikinci_makale)
        print("----")
        
       print(ViewController.baslik_listesi[3]      )
        
        print("----")
        print(ucuncu_makale)
        print("----")
            print(ViewController.baslik_listesi[4])
            print("----")
        print(dorduncu_makale)
        print("----")
        print(ViewController.baslik_listesi[5])
            print("----")
           print(besinci_makale)
    */
       
        
        
    } //En üstteki Metot
    
    
    
    
    
  public  func mostFrequent(array: [String]) -> (value: String, count: Int)? {
        var counts = [String: Int]()
        
        array.forEach { counts[$0] = (counts[$0] ?? 0) + 1 }
        
        if let (value, count) = counts.max(by: {$0.1 < $1.1}) {
            return (value, count)
        }
        
        // array was empty
        return nil
    }
    
  public  func listeden_kelimedon ( liste: [String])-> String{
       
        if let result =  mostFrequent(array:liste){
            
     return result.value
            
        }
        return ""
    }
    public  func listeden_sayidon ( liste: [String])-> Int{
        
        if let result =  mostFrequent(array:liste){
            
            return result.count
            
        }
        return 0
    }
   
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

