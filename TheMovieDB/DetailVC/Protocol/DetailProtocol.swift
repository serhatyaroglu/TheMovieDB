//
//  DetailProtocol.swift
//  TheMovieDB
//
//  Created by serhat yaroglu on 12.03.2022.
//

import Foundation
protocol ViewToPresenterDetailProtocol {
    var DetailInteractor:PresenterToInteractorDetailProtocol? {get set}
}

protocol PresenterToInteractorDetailProtocol {
}
protocol PresenterToRouterDetailProtocol {
    static func createModule(ref:DetailVC)
}
