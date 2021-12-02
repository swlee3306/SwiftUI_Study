//
//  MyVStackView.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/02.
//

import SwiftUI

struct MyVstack: View{
    
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
    }
}

struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}
