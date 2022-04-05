//
//  landmarksApp.swift
//  landmarks
//
//  Created by clerdson on 04/04/22.
//

import SwiftUI

@main
struct landmarksApp: App {
 @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
