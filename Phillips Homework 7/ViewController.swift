//
//  ViewController.swift
//  Phillips Homework 7
//
//  Created by Grace Phillips on 4/1/20.
//  Copyright © 2020 Grace Phillips. All rights reserved.
//

import UIKit
import WebKit
import MessageUI
class ViewController: UIViewController,MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate  {
    

    @IBOutlet weak var webView: WKWebView!
    
    
    @IBAction func openSite(_ sender: Any) {
        if let url = URL(string: "https://www.atlantisbahamas.com"){
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func TextMessage(_ sender: Any) {
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
        composeVC.recipients = ["4123025061"]
        composeVC.body = "This message sent successfully through my app!"
        
        if MFMessageComposeViewController.canSendText() {
            self.present(composeVC, animated: true, completion: nil)
            
        
        }else{
            print("Message Failed.")
        
    }
    }


    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://www.atlantisbahamas.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        
      
        
      
        // Do any additional setup after loading the view.
    }


}

