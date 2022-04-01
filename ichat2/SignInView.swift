//
//  ContentView.swift
//  ichat2
//
//  Created by Jefferson Valverde on 01/04/22.
//

import SwiftUI

struct SignInView: View {
    
    @StateObject var viewModel = SignInviewModel()
    
    var body: some View {
        VStack {
            Image("chat_logo")
                .resizable()
                .scaledToFit()
                .padding()
            
            TextField("Entre com seu e-mail", text: $viewModel.email)
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .disableAutocorrection(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 24.0)
                        .strokeBorder(Color(UIColor.separator), style: StrokeStyle(lineWidth: 1.0))
                )
                .padding(.bottom, 20)
                
            
            SecureField("Entre com sua senha", text: $viewModel.password)
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .disableAutocorrection(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 24.0)
                        .strokeBorder(Color(UIColor.separator), style: StrokeStyle(lineWidth: 1.0))
                )
                .padding(.bottom, 30)
            
            Button {
                viewModel.signIn()
            } label: {
                Text("Entrar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("BlueColor"))
                    .foregroundColor(Color.white)
                    .cornerRadius(24.9)
            }
            
            Divider()
                .padding()
            
            NavigationLink(
                destination: SignUpView()) {
                Text("Não tem uma conta? Clique aqui!")
                    .foregroundColor(Color.black)
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 32)
        .background(Color.init(red: 240 / 255, green: 231 / 255, blue: 210 / 255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
