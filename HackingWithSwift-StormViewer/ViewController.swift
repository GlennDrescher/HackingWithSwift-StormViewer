//
//  ViewController.swift
//  HackingWithSwift-StormViewer
//
//  Created by Glenn Drescher on 04/03/2020.
//  Copyright © 2020 GDev.run. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

