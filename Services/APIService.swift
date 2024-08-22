//
//  APIService.swift
//  MASNScaner
//
//  Created by Brian Young on 6/27/22.
//

import Foundation

class APIService{
    
    static let shared = APIService()
  
    func login(credendtials: Credentials, completion: @escaping (Result<Bool, Authentication.AuthenticationError>) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            if credendtials.password == "password"{
                completion(.success(true))
            }
            else{
                completion(.failure(.invalidCredentials))
            }
        }
    }
}
