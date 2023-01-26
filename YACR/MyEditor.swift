//
//  MyEditor.swift
//  YACR
//
//  Created by 唐某某 on 2023/1/26.
//

import SwiftUI
import CodeEditor

struct MyEditor: View {
        @State private var source   = "let it = be"
        @State private var language = CodeEditor.Language.swift

        var body: some View {
            VStack {
                Picker("Language", selection: $language) {
                    ForEach(CodeEditor.availableLanguages) { language in
                        Text("\(language.rawValue.capitalized)")
                            .tag(language)
                    }
                }
                CodeEditor(source: $source, language: language)
            }
        
            
        }
}

struct MyEditor_Previews: PreviewProvider {
    static var previews: some View {
        MyEditor()
    }
}
