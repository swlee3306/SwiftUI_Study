//
//  MytextView.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/04.
//


/*
 
 ex) let backgroundColors = [] : 배열 설정 방법
 
 Spacer() 대상의 공백을 추가하는 기능
 
 ex) .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
 - 각 프레임의 사이즈를 설정 하는 방법 (위 방법으로 설정하면 전체를 채울 수 있다.)
 
 ex) .edgesIgnoringSafeArea(.all) : 전체 배경색을 채우기 위한 기능
 ex) .count 배열의 길이
 
 */


import SwiftUI

struct MyTextView: View{
    
    @State
    private var index: Int = 0
    
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View{
        
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size : 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            
            Spacer()
            
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("배경아이템이 클릭 되었다.")
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0
            }else{
                self.index += 1
            }
        }
    }
    
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
