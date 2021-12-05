//
//  MyBindingFuntion_Main.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/05.
//

import SwiftUI

struct MyBindingFuntion_Main: View {
    
    //@State : 변수 값이 변화가 되면 다시 처리를 하는 기능 -> 뷰 적용
    @State
    private var isActivated: Bool = false
        
    var body: some View{
    

    VStack{
        VStack {
            HStack{
                
                MyVstack(isActivated: $isActivated)
                MyVstack(isActivated: $isActivated)
                MyVstack(isActivated: $isActivated)
                
            }.background(isActivated ? Color.red : Color.yellow).padding(isActivated ? 50.0 : 10.0)
            //탭 재스처 추가
                .onTapGesture {
                    print("HStack 이 클릭되었다.")
                    //isActivated 상태 변경
                    withAnimation{
                        self.isActivated.toggle()
                    }
                }
        }.background(Color.yellow)
        
        NavigationLink(destination: MyBindingFuntion(isActivated: $isActivated)){
                Text("Day 3 확인 페이지")
                    .font(.system(size :40))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                
        }.padding(.bottom, 50)
    }
    }
    
}

struct MyBindingFuntion_Main_Previews: PreviewProvider {
    static var previews: some View {
        MyBindingFuntion_Main()
    }
}
