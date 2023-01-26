//
//  YACRApp.swift
//  YACR
//
//  Created by 唐某某 on 2023/1/25.
//

import SwiftUI

@main
struct YACRApp: App {
    var body: some Scene {
        WindowGroup{
            NavigationView{
//                YACRView()
                ExampleView()
            }
        }
//        DocumentGroup(newDocument: YACRDocument()) { file in
//            ContentView(document: file.$document)
//        }
    }
}
