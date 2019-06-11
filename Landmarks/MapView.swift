//
//  MapView.swift
//  Landmarks
//
//  Created by Daniel Garofalo on 6/10/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {

    //Properties
    var coordinate : CLLocationCoordinate2D
    

    //Custom Functions
    //Creating an empty map
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    //Updating the map with coordinates
    func updateUIView(_ view: MKMapView, context: Context) {
//        Map needs:
//        - Coordinates, that can be passed from a class variable
//        - Span: How much does it close into the region to show?
//        - Region: An ensemble of both coordinate and span
        
        
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
    
    
    
    
    
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
#endif
