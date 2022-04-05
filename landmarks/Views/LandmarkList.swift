//
//  LandmarkList.swift
//  landmarks
//
//  Created by clerdson on 04/04/22.
//

import SwiftUI


struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }
    
    var body: some View {
        NavigationView{
            
            List{
                Toggle(isOn: $showFavoritesOnly) {
                                   Text("Favorites only")
                               }
           ForEach( filteredLandmarks){ landmark in
            
            NavigationLink{
                LandmarkDetail(landmark: landmark)
            }label: {
                landmarkRow(landmark: landmark)
            }
               
           }
            
            
            
            
           }
        .navigationTitle("Landmarks")

        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
