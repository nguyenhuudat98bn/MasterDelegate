//
//  ViewController.swift
//  MasterDelegate
//
//  Created by nguyễn hữu đạt on 5/14/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit
protocol detailViewControllerdDelegate : class {
    func passDataByDeleGate(number: Int)

}
class DetailViewController: UIViewController {
    var delegate : detailViewControllerdDelegate?
    var number : Int?
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if number != nil{
            nameText.text = String(number!)
        }
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveTo(_ sender: UIBarButtonItem){
        delegate?.passDataByDeleGate(number: Int(nameText.text ?? "") ?? 0)
        navigationController?.popViewController(animated: true)
    }

}

