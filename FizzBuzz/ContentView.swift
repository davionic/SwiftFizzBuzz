//
//  ContentView.swift
//  FizzBuzz
//
//  Created by David Rose on 3/22/21.
//

import SwiftUI

struct ContentView: View {
    
     func fizzBuzz(number: Int) -> String {
        
            switch number {
            case _ where number % 3 == 0 && number % 5 == 0:
                return "Fizz Buzz"
            case _ where number % 3 == 0:
                return "Fizz"
            case _ where number % 5 == 0:
                return "Buzz"
            default:
                return String(number)
            }
        }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(1 ... 100, id: \.self) { item in
                        Text(fizzBuzz(number: item))
                    }
                }
            }.navigationBarTitle(Text("Fizz Buzz"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
