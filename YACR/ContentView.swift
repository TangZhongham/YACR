//
//  ContentView.swift
//  YACR
//
//  Created by 唐某某 on 2023/1/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: YACRDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(YACRDocument()))
    }
}
