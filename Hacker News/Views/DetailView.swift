//
//  DetailView.swift
//  Hacker News
//
//  Created by Ethan Smith on 17/03/21.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    let objectID: String?
    
    var body: some View {
        if (url != nil) {
            WebView(urlString: url)
        } else {
            WebView(urlString: "https://news.ycombinator.com/item?id=\(objectID!)")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com", objectID: "https://www.google.com")
    }
}
