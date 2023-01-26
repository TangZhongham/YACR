//
//  YACRView.swift
//  YACR
//
//  Created by 唐某某 on 2023/1/26.
//

import SwiftUI

struct YACRView: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("See all your files here!")
                Image(systemName: "forward.fill")
            }
        }
        .navigationTitle("首页")
        .toolbar {
                Button(action: {}) {
                Image(systemName: "plus")
            }
        }
    }
}

struct YACRView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            YACRView()
        }
    }
}
