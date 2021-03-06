# SwiftUI_Study
출처 : 개발하는 정대리 SwiftUI 강좌

**Day 1 : 뷰의 배치 및 활용 방법고 SwiftUIt 시작**
  
  - 관련 메서드 
 
    fontWeigt(.bold) : 폰트 굵게
 
    system(size:20) : 폰트 사이즈 설정
 
    padding() : 주변의 원하느 사이즈 만큼 공백으 설정 할 수 있다.
 
    VStack{} : 스택 형식으로 view 를 표현할 수 있는 방식
 
    HStack{} : 평행하게 view 를 표현할 수 있는 방식
 
    Preview Content 에서 별도로 View를 관리 할 수 있다.
 
 **Day 2 : 애니메이셔 및 토글, 제스처 기능정리**
 
  - 관련 메서드
 
    toggle{} : bool 값을 반전시키는 기능
 
    @State : 변수 값이 변화가 되면 다시 처리를 하는 기능
 
    withAnimaiton{} : 애니메이션 효과를 통한 자연스로운 움직임 표현
 
    NavigationView{} : 이동할 다음 뷰나 효과를 설정하는 기능
 
    NavigationLink(destination: 종착지){} : 네비게이션 버튼을 만들어서 해당 기능이 동작 했을 때
    동작하는 뷰를 보여준다.
 
    나머지는 MytextVIew 에 내용정리
    
  **Day 3 : binding 기능 및 생성자 내용 정리**
   
   - 관련 메서드
    
     @Binding
     var isActivated: Bool
     
     
     생성자
     init(isActivated: Binding<Bool> = .constant(false)){
     _isActivated = isActivated }
  
  **Day 4 : 웹뷰 기능 정리**
  
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
  
  **Day 5 : Font 관련 기능 내용 정리**

   - 관련 메서드
    
 .tracking(2)
 =>글자와 글자 사이의 간격
 
 .font( .system(.body, design:.rounded))
 => 에플이 지원하는 폰트에 대한 다양한 설정이 가능하다. => .system()
 => 위 코드는 body 내에 폰트를 rounded 로 적용한다.
 
 .fontWeight(.medium)
 => 폰트의 굵기를 설정하는 코드
 
 .multilineTextAlignment(.center)
 => 텍스트의 위치를 설정하는 코드 (default : reading)
 
 .lineLimit(nil)
 => 보여줄 라인 수 설정 (nil 로 설정시 멀티라인으로 설정가능)
 
 .lineSpacing(10)
 => 글 사이 간격을 줄수 있는 코드
 
 .truncationMode(.middle)
 => 글자가 길어질 시 ... 으로 짤리는 위치를 설정할 수 있는 기능
 
 .shadow(color: Color.red ,radius: 4, x: 0, y: 10 )
 => 글자 그림자 설정, .radius 그림자의 위치 설정
 
 .cornerRadius(20)
 => 주변 윤각을 곡선으로 설정한다.
 
 글자와 글자 사이의 간격을 둘시 각각 padding() 을 설정한다.
  
**Day 6 :  Image 관련 기능 내용 정리**

   - 관련 메서드
    
 Image(): A view that displays an image.
 
 resizable(): The window can be resized by the user.
 
 scaledToFill(): The option to scale the content to fit the size of itself by changing the aspect ratio of the content if necessary.
 
 frame(): Positions this view within an invisible frame.
 
 clipShape(): Sets a clipping shape for this view.
 
 Overlay(): A mode that either multiplies or screens the source image samples with the background image samples, depending on the background color.
 
 opacity(): Sets the transparency of this view.
 
 stroke(): Traces the outline of this shape with a color or gradient.
 
 aspectRatio(): Constrains this view’s dimensions to the specified aspect ratio.
 
 clipped(): Clips this view to its bounding rectangular frame.

**Day 7 : Stack 관련 기능 내용 정리**
   
   Stack
    
    - VStack
        요소들을 세로로 배치 하는 방법
    
    - HStack
        요소들을 가로로 배치하는 방법
    
    - ZStack
        요소들을 층 형식으로 배치하는 방법
 
    zIndex : 요소의 층의 위치를 설정
    offset : 요소들의 위치를 변경 ex) x 축 or y 축
