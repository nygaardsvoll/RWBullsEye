//
//  AboutMeViewController.swift
//  BullsEye
//
//  Created by Erik Nygårdsvoll on 17/10/2017.
//  Copyright © 2017 Nymain. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {
  
  @IBOutlet weak var aboutMeWebView: UIWebView!
  
  
  @IBAction func close(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let url = Bundle.main.url(forResource: "AboutTheAuthor", withExtension: "html") {
      if let htmlData = try? Data(contentsOf: url) {
        let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
        aboutMeWebView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
      }
    }
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
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
