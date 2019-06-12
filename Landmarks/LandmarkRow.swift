//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Daniel Garofalo on 6/10/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    
    //Properies
    var landmark : Landmark // From the landmark Class/Model
    
    //View Build
    var body: some View {
        
        //This means that for the values of this row, the content that will be brought is going to be based on the Landmark class and from the Landmark data. Therefore, wherever we call this method, the origins are going to be the same
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
            Spacer()
            
            //
            if landmark.isFavorite {
                Image(systemName: "star")
                    .imageScale(.medium)
                    .foregroundColor(.black)
            }
        
        }
    
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        //When working with lists and rows, the preview needs to pass one element, at least
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
