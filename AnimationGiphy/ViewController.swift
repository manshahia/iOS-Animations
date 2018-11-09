//
//  ViewController.swift
//  AnimationGiphy
//
//  Created by Ravi Inder Manshahia on 09/11/18.
//  Copyright © 2018 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var count = 1
    func startAnimation()
    {
        
        if timer.isValid {
            timer.invalidate()
            //self.count = 1
            return
        }
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
            let imageName : String = "File" + String(self.count) + ".gif"
            self.count = self.count + 1
            self.imageview.image = UIImage(named: imageName)
            if self.count >= 71 {
                timer.invalidate()
                self.count = 1
            }
        })
        
    }
    @IBAction func next(_ sender: Any) {
        startAnimation()
    }
    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

