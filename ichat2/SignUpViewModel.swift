//
//  SignUpViewModel.swift
//  ichat2
//
//  Created by Jefferson Valverde on 01/04/22.
//

import Foundation

class SignUpViewModel: ObservableObject {
    
    var name = ""
    var email = ""
    var password = ""
    
    func signUp(){
        print("nome: \(name), email: \(email), senha: \(password)")
    }
}
