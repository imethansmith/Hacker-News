//
//  ContentView.swift
//  Hacker News
//
//  Created by Ethan Smith on 16/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
        }
        .navigationBarTitle("Hacker News")
    }
}

let posts = [
    Post(id: "1", title: "hello"),
    Post(id: "2", title: "two"),
    Post(id: "3", title: "bonjour")
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
