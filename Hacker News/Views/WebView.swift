//
//  WebView.swift
//  Hacker News
//
//  Created by Ethan Smith on 17/03/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            let formattedString = safeString.hasPrefix("http") ? safeString : "http://\(safeString)"
            if let url = URL(string: formattedString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
