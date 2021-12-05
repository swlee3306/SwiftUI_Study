//
//  MycontentView.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/04.
//

import SwiftUI


struct MycontentView: View {

    //@State : 변수 값이 변화가 되면 다시 처리를 하는 기능 -> 뷰 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View{
        
        VStack {
            HStack{
                
                MyVstack()
                MyVstack()
                MyVstack()
                
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
        
        
    }
    
}

struct MycontentView_Previews: PreviewProvider {
    static var previews: some View {
        MycontentView()
    }
}
