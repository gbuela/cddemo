//
//  DialogView.swift
//  CDDemo
//
//  Created by German Buela on 06/03/2022.
//

import SwiftUI

struct DialogView: View {
    @State private var isPresented: Bool = false
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            Text("Confirmtion dialog")
        }
        .confirmationDialog(Text("title"), isPresented: $isPresented) {
            VStack {
                Button(action: {}) {
                    Text("Hello")
                }
            }
        }
    }
}
