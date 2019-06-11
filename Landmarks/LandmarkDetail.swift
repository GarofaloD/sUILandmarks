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
    var landmark : Landmark
    
    //View Build
    var body: some View {
        //For the whole page
        VStack {
            //We can import subviews directly into parent views
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
               .frame(height: 300)
            CircleView(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack (alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                    .color(.black)
                
                    //For the bottom line
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                            Spacer()
                            Text(landmark.state)
                                .font(.subheadline)
                        }
                
                    }
                    .padding()
                Spacer() //This one adds more space at the bottom and pushes everything to the top
            }
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}




//Preview
#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
