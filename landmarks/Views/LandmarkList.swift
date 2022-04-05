//
//  LandmarkList.swift
//  landmarks
//
//  Created by clerdson on 04/04/22.
//

import SwiftUI


struct LandmarkList: View {
    
    var body: some View {
        NavigationView{
        List(landmarks){ landmark in
            
            NavigationLink{
                LandmarkDetail(landmark: landmark)
            }label: {
                landmarkRow(landmark: landmark)
            }
            
            
            
            
           }
        .navigationTitle("Landmarks")

        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
