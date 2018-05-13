//
//  ViewController.swift
//  MidProject2
//
//  Created by csie on 2018/5/9.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func gotoButterfly1(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showButterflyName", sender: sender.tag)
    }
    @IBAction func gotoButterfly2(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showButterflyName", sender: sender.tag)
    }
    @IBAction func gotoButterfly3(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showButterflyName", sender: sender.tag)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tag = sender as! Int
        let controller = segue.destination as! ButterflyTableViewController
        controller.number = tag
    }
    
    override func viewDidLoad() {
        navigationController?.navigationBar.prefersLargeTitles = true
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

