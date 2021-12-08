//
//  ContentView.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/02.
//

import SwiftUI

/*
 day 1
 fontWeigt(.bold) : 폰트 굵게
 system(size:20) : 폰트 사이즈 설정
 padding() : 가운데 정렬
 VStack{} : 스택 형식으로 view 를 표현할 수 있는 방식
 HStack{} : 평행하게 view 를 표현할 수 있는 방식
 Preview Content 에서 별도로 View를 관리 할 수 있다.
 onTapGesture{} : 탭 했을때 나타나는 효과 기능
 
 day 2
 toggle{} : bool 값을 반전시키는 기능
 @State : 변수 값이 변화가 되면 다시 처리를 하는 기능
 withAnimaiton{} : 애니메이션 효과를 통한 자연스로운 움직임 표현
 NavigationView{} : 이동할 다음 뷰나 효과를 설정하는 기능
 NavigationLink(destination: 종착지){} : 네비게이션 버튼을 만들어서 해당 기능이 동작 했을 때
 동작하는 뷰를 보여준다.
 
 나머지는 MytextVIew 에 내용정리
 
 day 3
 // 데이터를 연동시키는 기능
 @Binding
 var isActivated: Bool
 
 // 생성자
 init(isActivated: Binding<Bool> = .constant(false)){
     _isActivated = isActivated
 }

 나머지는 MyBindingFuntion, MyBindingFuntion_Main 에 정리
 
 day 4
 
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

 */

struct ContentView: View {
        
    var body: some View {
        
        NavigationView{
            VStack{
                
                Spacer()
                
                Text("SwiftUI 학습장")
                    .font(.system(size :40))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                    .padding(.bottom, 40
                    )
                
                NavigationLink(destination: MycontentView()){
                    Text("Day 1")
                        .font(.system(size :30))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    
                }.padding(.bottom, 40)
                
                NavigationLink(destination: MyTextView()){
                    Text("Day 2")
                        .font(.system(size :30))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    
                }.padding(.bottom, 40)
                
                NavigationLink(destination: MyBindingFuntion_Main()){
                    Text("Day 3")
                        .font(.system(size :30))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    
                }.padding(.bottom, 40)
                
                NavigationLink(destination: MyWebViewFundamental()){
                    Text("Day 4")
                        .font(.system(size :30))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    
                }.padding(.bottom, 40)
                
                Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
