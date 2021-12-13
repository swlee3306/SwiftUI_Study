//
//  Image_Tutorial.swift
//  SwiftUI_tutorial_test
//
//  Created by sanguk lee on 2021/12/11.
//

/*
 day 6
 
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
 
 */

import SwiftUI

struct Image_Tutorial : View {
    
    var body: some View {
        
        //MARK: sf symbol 이미지 불러오기
        
        //Image(systemName:"paperplane.circle")
        //.font(.system(size: 200))
        //.foregroundColor(.yellow)
        //.shadow(color: .gray, radius: 2, x: 5, y: 10)
        
        //MARK: download 받은 Assets 이미지 불러오기
        
        Image("MyImage").resizable().scaledToFill().frame(width: 300, height: 300)
            .clipShape(
                Circle()).shadow(color: .gray, radius: 10, x: 5, y: 10)
            .overlay(Circle())
            .foregroundColor(.black)
            .opacity(0.4)
            .overlay(Circle()
                        .stroke(Color.red, lineWidth: 10)
                        .padding())
            .overlay(Circle()
                        .stroke(Color.yellow, lineWidth: 10)
                        .padding(30))
            .overlay(Circle()
                        .stroke(Color.blue, lineWidth: 10)
                        .padding(50))
            .overlay(
                Text("구독 리스트")
                    .foregroundColor(.white)
                    .font(.system(size : 30))
                    .fontWeight(.bold))
        
        
        //.aspectRatio(contentMode:.fill)
        //.frame(width: 200, height: 100)
        //.clipped()
        //.edgesIgnoringSafeArea(.all)
        
        
    }
    
}

struct Image_Tutorial_Preview : PreviewProvider {
    
    static var previews : some View {
        
        Image_Tutorial()
        
    }
    
}




