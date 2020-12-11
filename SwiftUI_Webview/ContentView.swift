//
//  ContentView.swift
//  SwiftUI_Webview
//
//  Created by stam on 2020/12/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack{
                NavigationLink(
                    destination: MyWebview(urlToLoad: "https://www.navienhouse.com").ignoresSafeArea(),
                    label: {
                        Text("나비엔하우스")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .background(Color.red)
                            .cornerRadius(5)
                    })
                NavigationLink(
                    destination: MyWebview(urlToLoad: "http://www.naver.com").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/),
                    label: {
                        Text("네이버")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .background(Color.green)
                            .cornerRadius(5)
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
