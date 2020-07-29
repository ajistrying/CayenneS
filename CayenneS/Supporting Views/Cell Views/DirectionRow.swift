//
//  DirectionRow.swift
//  CayenneS
//
//  Created by Wellington Johnson on 7/28/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct DirectionRow: View {
    
    var direction: Direction
    
    var body: some View {
        VStack{
            Text("Step: X")
            Text(direction.directionText)
        }
        .padding()

    }
}

struct DirectionRow_Previews: PreviewProvider {
    static var previews: some View {
        DirectionRow(direction: Direction(directionText: "Take some arbitrary amount of stuff and put that stuff or cut it up, idk do something, this is just placeholder.", ingredientsIncluded: nil))
    }
}
