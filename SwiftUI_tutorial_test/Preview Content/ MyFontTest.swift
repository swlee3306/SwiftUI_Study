//
//   MyFontTest.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/11.
//


/*
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
 
 */


import SwiftUI

struct MyFontTest: View {
    
    //날짜를 표기할 수 있는 dateFormat을 만드는 방법
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        //date 출력 스타일 변경 : December 11, 2021
        formatter.dateStyle = .long
        return formatter
    }()
    
    // 현재 날짜를 알려주는 기능
    var today = Date()
    
    var trueOrFalse : Bool = false
    var number : Int = 123
    
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum").tracking(2).font( .system(.body, design:.rounded)).fontWeight(.medium).multilineTextAlignment(.center).lineLimit(nil).padding(.all, 20).lineSpacing(10).truncationMode(.middle).shadow(color: Color.red ,radius: 4, x: 0, y: 10 ).background(Color.yellow).cornerRadius(20).padding(20).background(Color.green).cornerRadius(20)
            
            Text("hello world").background(Color.green)
            
            Text("today : \(today, formatter: MyFontTest.dateFormat)")
            
            Text("True or False : \(String(trueOrFalse))")
            
            Text("Number : \(number)")
        }
    }
}

struct MyFontTest_Previews: PreviewProvider {
    static var previews: some View {
        MyFontTest()
    }
}
