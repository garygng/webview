//
//  ViewController.swift
//  webview
//
//  Created by Gary.nG on 2/15/16.
//  Copyright © 2016 Gary.nG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView1: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView1.delegate = self
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
        //webView1.loadHTMLString("<html><body><h1>hello Min Min</h1></body></html>", baseURL:NSURL(string:"http://www.maiziedu.com"))
        webView1.loadRequest(NSURLRequest(URL: NSURL(string:"http://www.xiaozibo.com/h5vedioplay/microPlay_201602140819191032.html")!))
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        NSLog("did start load")
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        NSLog("did finish load")
        activityIndicator.stopAnimating()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

