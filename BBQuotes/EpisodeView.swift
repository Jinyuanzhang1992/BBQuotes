//
//  EpisodeView.swift
//  BBQuotes
//
//  Created by Jinyuan Zhang on 09/11/2024.
//

import SwiftUI

struct EpisodeView: View {
    let episode: Episode

    var body: some View {
        VStack(alignment: .leading) {
            Text(episode.title)
                .font(.title)
            
            Text(episode.seasonEpisode)
                .font(.title2)
            
            AsyncImage(url: episode.image) { image in
               image
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 15))
            } placeholder: {
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: 300)
            }
            .frame(maxWidth: .infinity, maxHeight: 300)
            
            Text(episode.synopsis)
                .font(.title2)
                .minimumScaleFactor(0.5)
                .padding(.bottom)
            
            Text("Written By: \(episode.writtenBy)")
            
            Text("Directed By: \(episode.directedBy)")
            
            Text("Aired: \(episode.airDate)")
        }
        .padding()
        .foregroundStyle(.white)
        .background(.black.opacity(0.6))
        .clipShape(.rect(cornerRadius: 25))
        .padding(.horizontal)
    }
}

#Preview {
    EpisodeView(episode: ViewModel().episode)
}
