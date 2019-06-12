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
    //@State var showFavoritesOnly = true
    
    //This object will be the observer for the elements that are associated on the userData class (showFavoritesOnly and landmarks)
    @EnvironmentObject var userData : UserData
    
    
    //Building the view
    var body: some View {
        
        //Same function as the table view
//        Lists work with identifiable data. You can make your data identifiable in one of two ways: by calling the identified(by:) method with a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol, whih is the way we are doing it here.
        
        
        //It creates the full nav bar
        NavigationView {
            //Creates the list
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                

                //Create a new row for each element
                ForEach(userData.landmarks) { landmark in
                //Show only favorites or if the filter for favorites is on.
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        //Each row is a button that, when pressed, takes you to the detail of that partcular location
                        NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }

    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
            ForEach(["iPhone Xs Max"].identified(by: \.self)) { deviceName in
                LandmarkList()
                 //   .previewDevice(PreviewDevice(rawValue: deviceName))
                    //.previewDisplayName(deviceName)
                .environmentObject(UserData())
            }
    }
}
#endif
