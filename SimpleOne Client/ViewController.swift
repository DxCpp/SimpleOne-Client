//
//  ViewController.swift
//  SimpleOne Client
//
//  Created by Rishat Niyazov on 01.04.2024.
//

import UIKit
import WebKit


class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://home.simpleone.ru/ssp")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
