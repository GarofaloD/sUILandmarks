//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Daniel Garofalo on 6/10/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    //Properties
    
    
    
    //Building the view
    var body: some View {
        
        //Same function as the table view
//        Lists work with identifiable data. You can make your data identifiable in one of two ways: by calling the identified(by:) method with a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol, whih is the way we are doing it here.
        
        
        //It creates the full nav bar
        NavigationView {
            //Creates the list
            List(landmarkData) { landmark in
                //Each row is a button that, when pressed, takes you to the detail of that partcular location
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }

    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
            ForEach(["iPhone Xs Max", "iPhone 8"].identified(by: \.self)) { deviceName in
                LandmarkList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    //.previewDisplayName(deviceName)
            }
    }
}
#endif
