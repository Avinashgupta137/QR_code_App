//
//  MyViewController.swift
//  QRCodeApp
//
//  Created by IPS-149 on 13/10/22.
//

import UIKit
import WebKit

class MyViewController: UIViewController ,WKNavigationDelegate, WKUIDelegate  {
 
    @IBOutlet weak var loader: UIActivityIndicatorView!
    var txturl : String = ""
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loader.startAnimating()
        self.web()
      
    }
    func web() {
      
        webView.uiDelegate = self
        print("txturl : \(txturl)")
        if  var url = URL(string: "\(txturl)") {
        loader.isHidden = true
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        loader.stopAnimating()
        }
    }
    

   

}
