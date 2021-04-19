//
//  ViewController.swift
//  DemoAppForLogin
//
//  Created by 荒井海斗 on 2021/04/17.
//

import UIKit

class FirstViewController: UIViewController {

    var urlToInherit: String!
    
    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "FromLoginPageToWebPage", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FromLoginPageToWebPage" {
            let next = segue.destination as! LogInWebPageViewController
            urlToInherit = "https://qiita.com/api/v2/oauth/authorize?client_id=5aa950691c4276bf436ad317638741e1e7a98955"
            next.inheritedUrl = self.urlToInherit
        }
    }
 
    
    
}

