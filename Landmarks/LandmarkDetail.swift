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
    @EnvironmentObject var userData : UserData
    var landmark : Landmark
    
    //This will be the latest version of the favorites feature
    var landmarkIndex : Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    
    
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
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .color(.black)
                    
                    Button(action: {
                        // in the clocusre, the code uses landmarkIndex with the userData object to update the landmark in place.
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star")
                            .foregroundColor(.gray)
                        }
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
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
