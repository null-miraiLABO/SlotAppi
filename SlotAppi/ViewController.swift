//
//  ViewController.swift
//  SlotAppi
//
//  Created by 岡瀬　瑞樹 on 2021/06/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rev: UIButton!
    @IBOutlet weak var r0: UIImageView!
    @IBOutlet weak var r1: UIImageView!
    @IBOutlet weak var r2: UIImageView!
    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var result: UILabel!
    
    var rever = false
    var button0 = false
    var button1 = false
    var button2 = false
    var r0y = 0
    var r1y = 0
    var r2y = 0
    var hantei = true
    var tm:Timer! = nil
    var thread:Thread!
    var player0:AVAudioPlayer!
    var player1:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let img = UIImage(named: "number.png")
        var rect = CGRect(x: 0, y: CGFloat(r0y), width: 32, height: 32)
        var cgimg = (img?.cgImage)!.cropping(to: rect)
        r0.image = UIImage(cgImage: cgimg!)
        
        rect = CGRect(x: 0,y: CGFloat(r1y),width: 32, height: 32)
        cgimg = (img?.cgImage)!.cropping(to: rect)
        r1.image = UIImage(cgImage: cgimg!)
        
        rect = CGRect(x: 0,y: CGFloat(r1y),width: 32, height: 32)
        cgimg = (img?.cgImage)!.cropping(to: rect)
        r2.image = UIImage(cgImage: cgimg!)
        result.text = ""
        
    }
    @IBAction func clickRever(_ sender: Any){
        if rever && hantei {
            rev.setBackgroundImage(UIImage(named: "ude_age.png"), for: UIControl.State.normal)
            tm.invalidate()
            tm = nil
            b0.setBackgroundImage(UIImage, for: "button_normal.png"),for:UIControl.State.normal)
            b1.setBackgroundImage(UIImage, for: "button_normal.png"),for:UIControl.State.normal)
            b2.setBackgroundImage(UIImage, for: "button_normal.png"),for:UIControl.State.normal)
            button0 = false
            button1 = false
            button2 = false
            rever = false
            result.text = ""
        }
        else if tm == nil {
            rev.setBackgroundImage(UIImage, for: <#T##UIControl.State#>)
        }
    }


}

