//
//  ContentView.swift
//  sample1
//
//  Created by Yugandhar Kommineni on 1/26/22.
//

import SwiftUI
import SPMTestOne
import SoftUIView

struct ContentView: View {
    @State var text = NSMutableAttributedString(string: "")
    var body: some View {
        Text("Hello, world!")
            .padding()
        SPMTestOne()
        TextView()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIView {
//        UITextView()
        let softUIView = SoftUIView(frame: .init(x: 100, y: 100, width: 200, height: 200))
//        view.addSubview(softUIView)
        softUIView.mainColor = UIColor.brown.cgColor
        softUIView.cornerRadius = 50
        softUIView.darkShadowColor = UIColor.black.cgColor
        softUIView.lightShadowColor = UIColor.yellow.cgColor
        softUIView.shadowOpacity = 0.5
        softUIView.shadowOffset = .init(width: -6, height: 6)
        softUIView.shadowRadius = 10
        return softUIView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
//        let softUIView = SoftUIView(frame: .init(x: 100, y: 100, width: 200, height: 200))
////        view.addSubview(softUIView)
//        softUIView.mainColor = UIColor.brown.cgColor
//        softUIView.cornerRadius = 50
//        softUIView.darkShadowColor = UIColor.black.cgColor
//        softUIView.lightShadowColor = UIColor.yellow.cgColor
//        softUIView.shadowOpacity = 0.5
//        softUIView.shadowOffset = .init(width: -6, height: 6)
//        softUIView.shadowRadius = 10
    }
}

