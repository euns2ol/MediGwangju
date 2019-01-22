//
//  FacebookController.swift
//  MedicalGwangju
//
//  Created by 조은솔 on 2018. 7. 23..
//  Copyright © 2018년 sol. All rights reserved.
//

import UIKit

class FreeDiagnoseController: UIViewController, UIWebViewDelegate {
    
    var url: String = "https://www.jnu.ac.kr/MainUniLife/Welfare/HealthResources/foreigner"
    
    @IBOutlet weak var WebView: UIWebView!
    @IBOutlet weak var Indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WebView.delegate = self
        
        getWebsite(siteURL: url)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        Indicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        Indicator.stopAnimating()
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error)
    {
        Indicator.stopAnimating()
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    func getWebsite(siteURL: String)
    {
        let url = URL(string: siteURL)
        WebView.loadRequest(URLRequest(url: url!))
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}

