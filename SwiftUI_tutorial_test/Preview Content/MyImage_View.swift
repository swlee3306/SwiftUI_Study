//
//  MyImage_View.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/13.
//

import SwiftUI
import WebKit



struct MyImage_View: View {
    var body: some View {
        VStack{
            Image("MyImage").frame(height : 10).offset(y: -900)
            Image_Tutorial()
            MyImage_Web().padding()
        }
    }
}


struct MyImage_WebLoad : UIViewRepresentable {
    
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
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyImage_WebLoad>) {
    }
    
}


struct MyImage_Web: View {
    
    var body: some View{
        
        HStack{
            NavigationLink(destination:MyImage_WebLoad (urlToLoad: "https://www.youtube.com/channel/UCutO2H_AVmWHbzvE92rpxjA").edgesIgnoringSafeArea(.all)){
                Text("정대리 유튜브")
                    .font(.system(size :20))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                
            }.padding(.bottom, 40)
            
            NavigationLink(destination:     MyImage_WebLoad(urlToLoad: "https://www.youtube.com/c/ITSUB%EC%9E%87%EC%84%AD").edgesIgnoringSafeArea(.all)){
                Text("ITSub")
                    .font(.system(size :20))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                
            }.padding(.bottom, 40)
            
            NavigationLink(destination:     MyImage_WebLoad(urlToLoad: "https://www.youtube.com/c/%ED%95%8F%EB%8D%94%EC%82%AC%EC%9D%B4%EC%A6%88").edgesIgnoringSafeArea(.all)){
                Text("핏더 사이즈")
                    .font(.system(size :20))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                
            }.padding(.bottom, 40)
        }
    }
}




struct MyImage_View_Previews: PreviewProvider {
    
    static var previews: some View {
        MyImage_View()
    }
    
}
