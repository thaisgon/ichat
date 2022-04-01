//
//  SignInViewModel.swift
//  ichat2
//
//  Created by Jefferson Valverde on 01/04/22.
//

import Foundation


class SignInviewModel: ObservableObject {
    
    var email = ""
    var password = ""
    
    func signIn(){
        print("email: \(email), senha: \(password)")
    }
}
