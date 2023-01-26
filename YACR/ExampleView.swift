//
//  ExampleView.swift
//  YACR
//
//  Created by 唐某某 on 2023/1/26.
//

import SwiftUI
import CodeEditor

struct ExampleView: View {
  
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = "let a = 42"
  @State private var language = CodeEditor.Language.swift
    @State private var theme    = CodeEditor.ThemeName.ocean

  var body: some View {
    VStack(spacing: 10) {
      HStack {
        Picker("Language", selection: $language) {
          ForEach(CodeEditor.availableLanguages) { language in
            Text("\(language.rawValue.capitalized)")
              .tag(language)
          }
        }
        Picker("Theme", selection: $theme) {
          ForEach(CodeEditor.availableThemes) { theme in
            Text("\(theme.rawValue.capitalized)")
              .tag(theme)
          }
        }
      }
      .navigationTitle("首页")
        
//      .padding()
    
      Divider()
    
      #if os(macOS)
        CodeEditor(source: $source, language: language, theme: theme,
                   fontSize: .init(get: { CGFloat(fontSize)  },
                                   set: { fontSize = Int($0) }))
          .frame(minWidth: 640, minHeight: 480)
      #else
        CodeEditor(source: $source, language: language, theme: theme)
      #endif
    }
  }
}

struct ExampleView_Previews: PreviewProvider {
  static var previews: some View {
      NavigationView {
          ExampleView()
      }
  }
}
