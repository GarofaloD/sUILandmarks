//
//  CircleView.swift
//  Landmarks
//
//  Created by Daniel Garofalo on 6/10/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import SwiftUI

struct CircleView : View {
    
    //Properties
    var image: Image
    
    
    var body: some View {
        //It can be called from the property
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

#if DEBUG
struct CircleView_Previews : PreviewProvider {
    static var previews: some View {
        CircleView(image: Image("turtlerock"))
    }
}
#endif
