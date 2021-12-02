//
//  ContentView.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/02.
//

import SwiftUI

/*
 fontWeigt(.bold) : 폰트 굵게
 system(size:20) : 폰트 사이즈 설정
 padding() : 가운데 정렬
 VStack{} : 스택 형식으로 view 를 표현할 수 있는 방식
 HStack{} : 평행하게 view 를 표현할 수 있는 방식
 
 Preview Content 에서 별도로 View를 관리 할 수 있다.
 */

struct ContentView: View {
    var body: some View {
    VStack {
        Text("1 안녕하세요 반갑습니다!")
            .fontWeight(.bold).font(.system(size: 20))
            .padding()
        Text("2 안녕하세요 반갑습니다!")
            .fontWeight(.bold).font(.system(size: 20))
            .padding()
        Text("3 안녕하세요 반갑습니다!")
            .fontWeight(.bold).font(.system(size: 20))
            .padding()
        Text("4 안녕하세요 반갑습니다!")
        .fontWeight(.bold).font(.system(size: 20))
        .padding()
            HStack{
             MyVstack()
             MyVstack()
             MyVstack()
            }.background(Color.red)
    }.background(Color.yellow)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
