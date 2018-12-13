//
//  SlvSHPage.swift
//  Final Project
//
//  Created by Nick  Pullen on 12/7/18.
//  Copyright © 2018 Nick  Pullen. All rights reserved.
//

import UIKit
import WebKit

class SlvSHPage: UIViewController {


    
    @IBOutlet weak var slvshWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let youtubeURL = "https://www.youtube.com/embed/b_9xjpVljtM"
        slvshWebView.allowsInlineMediaPlayback = true
        slvshWebView.loadHTMLString(
            "<iframe width=\"\(slvshWebView.frame.width)\" height=\"\(slvshWebView.frame.height)\" src=\"\(youtubeURL)?&playsinline=1\" frameborder=\"0\" allow=\"accelerometer; autoplay ; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>", baseURL: nil)
    }

    




}
