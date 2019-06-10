//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Daniel Garofalo on 6/10/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    
    //Properties
    
    //View Build
    var body: some View {
        //For the whole page
        VStack {
            //We can import subviews directly into parent views
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack (alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                    .color(.black)
                
                    //For the bottom line
                    HStack {
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                            Spacer()
                            Text("California")
                                .font(.subheadline)
                        }
                
                    }
                    .padding()
                Spacer() //This one adds more space at the bottom and pushes everything to the top
            }
    }
}




//Preview
#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
#endif
