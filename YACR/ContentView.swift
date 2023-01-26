//
//  ContentView.swift
//  YACR
//
//  Created by 唐某某 on 2023/1/25.
//

import SwiftUI
import CodeEditor

struct ContentView: View {
    @Binding var document: YACRDocument
    @State private var source = "let a = 42\n"


    var body: some View {
//        TextEditor(text: $document.text)
        VStack {
            CodeEditor(source: $source, language: .swift, theme: .ocean)
        }
        .navigationTitle("首页")

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(document: .constant(YACRDocument()))
        }
    }
}
