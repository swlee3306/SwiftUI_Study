//
//  MyWebViewFundamental.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/08.
//

import SwiftUI
import WebKit

// uikit 의 uiview 를 사용할 수 있도록 한다.
// UIViewControllerRepresentable
struct MyWebViewFundamental_web : UIViewRepresentable {
        
    var urlToLoad: String
    
    // make ui view
    func makeUIView(context: Context) -> WKWebView {
        
        // unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰를 로드한다.
        webview.load(URLRequest(url: url))
        
        return webview
        
    }
    // update ui view
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebViewFundamental_web>) {
    }
    
}

struct MyWebViewFundamental: View {
    
    var body: some View{
     
        HStack{
            NavigationLink(destination:     MyWebViewFundamental_web(urlToLoad: "https://www.naver.com").edgesIgnoringSafeArea(.all)){
                Text("Naver")
                    .font(.system(size :30))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                
            }.padding(.bottom, 40)
            
            NavigationLink(destination:     MyWebViewFundamental_web(urlToLoad: "https://www.google.com").edgesIgnoringSafeArea(.all)){
                Text("Google")
                    .font(.system(size :30))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                
            }.padding(.bottom, 40)
            
            NavigationLink(destination:     MyWebViewFundamental_web(urlToLoad: "https://www.daum.net").edgesIgnoringSafeArea(.all)){
                Text("Daum")
                    .font(.system(size :30))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                
            }.padding(.bottom, 40)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.yellow)
            .edgesIgnoringSafeArea(.all)
    }
}


struct MyWebViewFundamental_Preview : PreviewProvider {
    static var previews: some View {
        MyWebViewFundamental()
    }
}
