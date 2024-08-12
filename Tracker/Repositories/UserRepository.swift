//
//  UserRepository.swift
//  Tracker
//
//  Created by Heang Bunnarith on 11/8/24.
//

import Foundation

class UserRepository {
    private init() {}
    
    static let shared = UserRepository()
    
    func login(email: String, password: String) async {
        do {
            let authRes = try await SupabaseManager.shared.auth.signUp(email: email, password: password)
            print(authRes)
        } catch {
            print("Error \(error.localizedDescription)")
        }
    }
}
