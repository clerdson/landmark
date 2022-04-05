//
//  modelData.swift
//  landmarks
//
//  Created by clerdson on 04/04/22.
//

import Foundation
import Combine


final class ModelData:ObservableObject{
  @Published var landmarks:[Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename:String)->T{
    
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("could find file \(filename)in main bundle")
    }
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("could find file \(filename)in main bundle")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("could find file \(filename)in main bundle")
    }
}
