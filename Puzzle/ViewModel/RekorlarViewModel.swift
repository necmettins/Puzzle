//
//  RekorlarViewModel.swift
//  Puzzle
//
//  Created by Necmettin SOLMAZ on 24.01.2022.
//

import Foundation
class RekorlarViewModel: ObservableObject{
    var rekor : User?{
        if let savedUserData = UserDefaults.standard.object(forKey: "rekor") as? Data{
            let decoder = JSONDecoder()
            if let savedUser = try? decoder.decode(User.self, from: savedUserData){
                return savedUser
            }
        }
        return nil
//        let rekor = UserDefaults.standard.double(forKey: "rekor")
//        return rekor
    }
    var rekorResim : User?{
        if let savedUserData = UserDefaults.standard.object(forKey: "rekorResim") as? Data{
            let decoder = JSONDecoder()
            if let savedUser = try? decoder.decode(User.self, from: savedUserData){
                return savedUser
            }
        }
        return nil
//        let rekor = UserDefaults.standard.double(forKey: "rekor")
//        return rekor
    }
}
