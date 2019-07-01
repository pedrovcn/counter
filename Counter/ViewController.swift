//
//  ViewController.swift
//  Counter
//
//  Created by Pedro Vinicius Cuêlho do Nascimento on 01/07/2019.
//  Copyright © 2019 Pedro Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countingLabel: UILabel!
    @IBOutlet var countingView: UIView!

    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapRecog = UITapGestureRecognizer(target: self, action: #selector(count))
        self.countingView.addGestureRecognizer(tapRecog)

    }

    @IBAction func resetCounter(_ sender: UIButton) {
        self.counter = 0
        self.countingLabel.text = "00"
    }

    @objc func count() {
        self.counter += 1
        self.countingLabel.text = String(format: "%02d", arguments: [self.counter])
    }
}

