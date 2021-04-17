//
//  LogInWebPageViewController.swift
//  DemoAppForLogin
//
//  Created by 荒井海斗 on 2021/04/17.
//

import UIKit
import WebKit

class LogInWebPageViewController: UIViewController {

    var inheritedUrl: String!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webConfig = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfig)
        view = webView
        
        let url = URL(string: inheritedUrl)
        if let unwrapURL = url {
            let qiitaRequest = URLRequest(url: unwrapURL)
            webView.load(qiitaRequest)
        }
    }

}
