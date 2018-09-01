//
//  SecondViewController.swift
//  Multimedia App
//
//  Created by Zabeehullah Qayumi on 8/26/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit
import WebKit


class SecondViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var forwardButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        myWebView.navigationDelegate = self
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear( animated)
        
        let urlString:String = "https://www.apple.com"
        let url:URL = URL(string: urlString)!
        let urlRequest:URLRequest = URLRequest(url: url)
        myWebView.load(urlRequest)
        textField.text = urlString
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let urlString:String = textField.text!
        let url:URL = URL(string: urlString)!
        let urlRequest:URLRequest = URLRequest(url: url)
        myWebView.load(urlRequest)
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        if myWebView.canGoBack{
            myWebView.goBack()
        }
    }
    
    
    @IBAction func forwardButtonTapped(_ sender: Any) {
        if myWebView.canGoForward{
            myWebView.goForward()
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        backButton.isEnabled = myWebView.canGoBack
        forwardButton.isEnabled = myWebView.canGoForward
        textField.text = myWebView.url?.absoluteString
    }
    


}

