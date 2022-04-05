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
        }
    }
}

struct landmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            
        
        landmarkRow(landmark:landmarks[1])
            landmarkRow(landmark:landmarks[2])
                
    
        }.previewLayout(.fixed(width: 300, height: 70))
        }
}
