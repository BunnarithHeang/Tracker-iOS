//
//  SupabaseClient.swift
//  Tracker
//
//  Created by Heang Bunnarith on 11/8/24.
//

import Foundation
import Supabase

class SupabaseManager {
    private init() {}
    static let shared = SupabaseManager()
    
    let client = SupabaseClient(
        supabaseURL: URL(
            string: ""
        )!,
        supabaseKey: ""
    )
    
    var auth: AuthClient {
        client.auth
    }
}
