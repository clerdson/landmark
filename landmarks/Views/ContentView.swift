//
//  ContentView.swift
//  landmarks
//
//  Created by clerdson on 04/04/22.
//

import SwiftUI

struct ContentView: View {
    var landmark:Landmark
    var body: some View {
        VStack {
            
            MapView(coordinate: landmark.locationCoordinate)
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

                                Text("About Turtle Rock")
                                    .font(.title2)
                                Text("Descriptive text goes here.")
        }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarks[0])
    }
}
