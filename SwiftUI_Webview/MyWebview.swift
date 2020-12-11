//
//  MyWebview.swift
//  SwiftUI_Webview
//
//  Created by stam on 2020/12/11.
//

import SwiftUI
import WebKit

struct MyWebview: UIViewRepresentable {
    
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: urlToLoad) else { return WKWebView()}
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWebview>) {
        
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://youtu.be/RntdewIHS3w")
    }
    
}
