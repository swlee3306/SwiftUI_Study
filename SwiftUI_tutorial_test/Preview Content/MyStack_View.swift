//
//  MyStack_View.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2022/01/04.
//

/*
 Stack
    - VStack
        ㄴ 요소들을 세로로 배치 하는 방법
    - HStack
        ㄴ 요소들을 가로로 배치하는 방법
    - ZStack
        ㄴ 요소들을 층 형식으로 배치하는 방법
 
    zIndex : 요소의 층의 위치를 설정
    offset : 요소들의 위치를 변경 ex) x 축 or y 축
  
 */

import SwiftUI

struct MyStack_View: View{
    
    var body: some View{
        VStack{
            ScrollView{
            ZStack{
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
                    .zIndex(2)
                
                    HStack{
                        Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
                        Rectangle().frame(width: 50, height: 50).foregroundColor(.purple)
                            .offset(y: 100)
                        Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
                    }.zIndex(2)
                
                Rectangle().frame(width: 300, height: 300)
                    .foregroundColor(.yellow)
                    .zIndex(1)
                
                Rectangle().frame(width: 400, height: 400)
                    .foregroundColor(.orange)
                    .zIndex(0)
             
            }
            
            ZStack{
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
                    .zIndex(2)
                
                    HStack{
                        Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
                        Rectangle().frame(width: 50, height: 50).foregroundColor(.purple)
                            .offset(y: 100)
                        Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
                    }.zIndex(2)
                
                Rectangle().frame(width: 300, height: 300)
                    .foregroundColor(.yellow)
                    .zIndex(1)
                
                Rectangle().frame(width: 400, height: 400)
                    .foregroundColor(.orange)
                    .zIndex(0)
             
            }
            
            ZStack{
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
                    .zIndex(2)
                
                    HStack{
                        Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
                        Rectangle().frame(width: 50, height: 50).foregroundColor(.purple)
                            .offset(y: 100)
                        Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
                    }.zIndex(2)
                
                Rectangle().frame(width: 300, height: 300)
                    .foregroundColor(.yellow)
                    .zIndex(1)
                
                Rectangle().frame(width: 400, height: 400)
                    .foregroundColor(.orange)
                    .zIndex(0)
             
            }
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
    
}

struct MyStack_PreView: PreviewProvider{
    
    static var previews: some View{
        MyStack_View()
    }
    
}
