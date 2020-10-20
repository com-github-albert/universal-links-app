//
//  ViewController.swift
//  UniversalLink
//
//  Created by jett on 2020/6/15.
//  Copyright © 2020 mutating. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
            let jsonURL = Bundle.main.url(forResource: "Items", withExtension: "json")!
            let jsonData = try Data(contentsOf: jsonURL)
            let decoder = JSONDecoder()
            
            let computers = try decoder.decode(Array<Computer>.self, from: jsonData)
            print(computers)
        } catch {
            
        }
    }


}

