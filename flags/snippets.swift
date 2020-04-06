//
//  snippets.swift
//  flags
//
//  Created by Lanre ESAN on 21/03/2020.
//  Copyright © 2020 tomisinesan.com. All rights reserved.
//

import Foundation
//
//  ContentView.swift
//  flags
//
//  Created by Lanre ESAN on 20/03/2020.
//  Copyright © 2020 tomisinesan.com. All rights reserved.
//

import SwiftUI

/*
 struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show Alert") {
            self.showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
/*
 struct ContentView: View {
     var body: some View {
         VStack(alignment:.leading,spacing:20.0){
         Text("Hello, World!")
         Text("Hi")
     }
 }
 }
 */

//colors
/*
 ZStack {
          Text("Your content")
      }
      .background(Color.red)
 */

//colors
/*
 ZStack {
          Text("Your content") .background(Color.red)
      }
 */

/*
 ZStack {
        Color.red
        Text("Your content")
    }
 */



// colors with size adjustments
/*
 Color.red.frame(width: 200, height: 200)
 */


//custom colors
//Color(red: 1, green: 0.8, blue: 0)

// colors to avoid SafeArea
/*
 ZStack {
    Color.red.edgesIgnoringSafeArea(.all)
    Text("Your content")
}
*/


/*
 Gradients are made up of several components:

 An array of colors to show
 Size and direction information
 The type of gradient to use
 */

//LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
//RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
//AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)

//Buttons
/*
 Button("Tap me!") {
    print("Button was tapped")
}
*/

/*
 Button(action: {
     print("Button was tapped")
 }) {
     Text("Tap me!")
 }
 */
/*
 Image("pencil")
 Image(decorative: "pencil")
 Image(systemName: "pencil")
 */



//alerts

/*
A basic SwiftUI alert has a title, message, and one dismiss button, like this
 */

/*
 Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
 */
