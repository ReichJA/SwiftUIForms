//
//  ContentView.swift
//  SwiftUIForms
//
//  Created by Jorge-Alberto Reich on 20.11.21.
//

import SwiftUI

class FormViewModel : ObservableObject{
    
    var firstName = ""
    var lastName = ""
    
   var password = ""
    var passwordAgain = ""
    
    var streetAddress = ""
    var city = ""
    var zipCode = ""
    var country = ""
    
    var test : String {
        get {return firstName}
        set {firstName = newValue}
    }
        
}

struct ContentView: View {
    
    @State var formViewModel = FormViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                
                Form{
                    Section{
                        TextField("First Name", text: $formViewModel.firstName)
                        TextField("Last Name", text: $formViewModel.lastName)
                    }
                    
                    Section(footer: Text("Your password must be least 8 characters long.")){
                        
                        SecureField("Create password", text: $formViewModel.password)
                        SecureField("Confirm password", text: $formViewModel.passwordAgain)
                        
                    }
                    
                    Section {
                        TextField("Street Address", text: $formViewModel.streetAddress)
                        TextField("City", text: $formViewModel.city)
                        TextField("Zip Code", text: $formViewModel.zipCode)
                        TextField("Country", text: $formViewModel.country)
                    } header: {
                            Text("Mailing Address")
                    }

                }
                
                Divider()
                
                Button {

                } label: {
                    Text("Continue")
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
                .padding()

                
            }
            
        }
        .navigationTitle("Create Account")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
