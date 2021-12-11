//
//  MyVStackView.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/02.
//

import SwiftUI

struct MyVstack: View{
    
    // 데이터를 연동시킨다
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)){
        _isActivated = isActivated
    }
    
    var body: some View {
        
        VStack{
            Text("1!")
                .fontWeight(.bold).font(.system(size: 20))
                .padding()
            Text("2!")
                .fontWeight(.bold).font(.system(size: 20))
                .padding()
            Text("3!")
                .fontWeight(.bold).font(.system(size: 20))
                .padding()
            Text("4!")
                .fontWeight(.bold).font(.system(size: 20))
                .padding()
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}

struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}
