//
//  SheetView.swift
//  CDDemo
//
//  Created by German Buela on 05/03/2022.
//

import SwiftUI

struct SheetView: View {
    @State private var isPresented: Bool = false
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            Text("Action sheet")
        }
        .actionSheet(isPresented: $isPresented) { ActionSheet(title: Text("Action sheet"), message: nil, buttons: [ .default(Text("Hello"))])
        }
    }
}
