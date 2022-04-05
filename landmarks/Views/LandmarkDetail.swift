//
//  LandmarkDetail.swift
//  landmarks
//
//  Created by clerdson on 04/04/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    var body: some View {
        ScrollView {
            VStack {
                
                MapView(coordinate:landmark.locationCoordinate)
                    .ignoresSafeArea(edges:.top)
                    .frame(height:300)
                
                CircleImage(image: landmark.image)
                    .offset(y:-130)
                    .padding(.bottom,-130)
                
                VStack(alignment:.leading) {
                    Text(landmark.name)
                        .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                    
                    Divider()

                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
            }.padding()
                Spacer()
            }
        }.navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
