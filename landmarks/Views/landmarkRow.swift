//
//  landmarkRow.swift
//  landmarks
//
//  Created by clerdson on 04/04/22.
//

import SwiftUI

struct landmarkRow: View {
var landmark:Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height:50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct landmarkRow_Previews: PreviewProvider {
    static  var landmarks = ModelData().landmarks
    static var previews: some View {
        Group{
            
        
        landmarkRow(landmark:landmarks[0])
            landmarkRow(landmark:landmarks[1])
                
    
        }.previewLayout(.fixed(width: 300, height: 70))
        }
}
