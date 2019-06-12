//
//  UserData.swift
//  Landmarks
//
//  Created by Daniel Garofalo on 6/11/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//
//This whoe class is kept to be used as a notification center




import SwiftUI
import Combine

final class UserData : BindableObject {
    
    //Properties
    //It needs a Passthrough Subject
    let didChange =  PassthroughSubject<UserData, Never>()
    
    
    
    //And it all the values that need to be monitored through this class are added on the  same class
    var showFavoritesOnly = false{
        didSet{
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet{
            didChange.send(self)
        }
    }
    
    
    
    
    
    
}
