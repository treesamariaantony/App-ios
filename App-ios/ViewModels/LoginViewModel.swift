//
//  LoginViewModel.swift
//  App-ios
//
//  Created by Guest User on 19/03/2024.
//

import Foundation

protocol LoginViewModelProtocol{
    func login(username:String?, password : String?) -> Bool
//func resolveSecondViewModel() -> SecondScreenViewModelProtocol
}

class LoginViewModel : LoginViewModelProtocol{
    
    func login(username: String?, password: String?) -> Bool {
        guard let username = username else { return false}
        guard let password = password else { return false}
        
        if username == "treesa" && password == "1234"{
            return true
        }
        return false
    }
    
//    func resolveSecondViewModel() -> SecondScreenViewModelProtocol {
//        let viewModel = SecondScreenViewModel()
//        return viewModel
//    }
}
