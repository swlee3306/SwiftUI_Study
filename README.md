# SwiftUI_Study
출처 : 개발하는 정대리 SwiftUI 강좌

Day 1 : 뷰의 배치 및 활용 방법고 SwiftUIt 시작
  
  - 관련 메서드 
 
    fontWeigt(.bold) : 폰트 굵게
 
    system(size:20) : 폰트 사이즈 설정
 
    padding() : 주변의 원하느 사이즈 만큼 공백으 설정 할 수 있다.
 
    VStack{} : 스택 형식으로 view 를 표현할 수 있는 방식
 
    HStack{} : 평행하게 view 를 표현할 수 있는 방식
 
    Preview Content 에서 별도로 View를 관리 할 수 있다.
 
 Day 2 : 애니메이셔 및 토글, 제스처 기능정리
 
  - 관련 메서드
 
    toggle{} : bool 값을 반전시키는 기능
 
    @State : 변수 값이 변화가 되면 다시 처리를 하는 기능
 
    withAnimaiton{} : 애니메이션 효과를 통한 자연스로운 움직임 표현
 
    NavigationView{} : 이동할 다음 뷰나 효과를 설정하는 기능
 
    NavigationLink(destination: 종착지){} : 네비게이션 버튼을 만들어서 해당 기능이 동작 했을 때
    동작하는 뷰를 보여준다.
 
    나머지는 MytextVIew 에 내용정리
    
  Day 3 : binding 기능 및 생성자 내용 정리
   
   - 관련 메서드
    
     @Binding
     var isActivated: Bool
     
     
     생성자
     init(isActivated: Binding<Bool> = .constant(false)){
     _isActivated = isActivated }
  
  Day 4 : 웹뷰 기능 정리
  
  - 관련 메서드
    
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
