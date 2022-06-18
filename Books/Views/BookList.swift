//
//  BookList.swift
//  Books
//
//  Created by Dang Le on 6/18/22.
//

import SwiftUI

struct BookList: View {
    //some is used to define an Opaque Type and opaque type is a way to return a type without needing to provide details on the concrete type itself.
    var body: some View {
        //NavigationView use to transverse a collection of Views
        NavigationView{
            //this is to make a list and we are passing books into it
            List(books){ book in
                NavigationLink{
                    //links it goes to opens up BookDetail Struct
                    BookDetail(book: book)
                } label: {
                    //shows the Book in row
                    BookRow(book: book)
                }
            }
            .navigationTitle("Books")
        }
        
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
