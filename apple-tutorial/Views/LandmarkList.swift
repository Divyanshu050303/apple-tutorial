//
//  LandmarkList.swift
//  apple-tutorial
//
//  Created by RAC IT on 16/12/25.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    var filteredLandMarks: [Landmark]{
        modelData.landmarks.filter{landmark in (!showFavoritesOnly)||(landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly, ){
                    Text("Favorites Only")
                }
                ForEach(filteredLandMarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                    }
                }

            }
            .animation(.default, value:filteredLandMarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
