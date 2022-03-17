//
//  HomeRouter.swift
//  TheMovieDB
//
//  Created by serhat yaroglu on 12.03.2022.
//

import Foundation
class HomeRouter : PresenterToRouterHomeProtocol {
    static func createModule(ref: HomeVC) {
        let presenter : ViewToPresenterHomeProtocol & InteractorToPresenterHomeProtocol = HomePresenter()
        ref.HomePresenterNesnesi = presenter
        ref.HomePresenterNesnesi?.HomeInteractor = HomeInteractor()
        ref.HomePresenterNesnesi?.HomeView = ref 
             ref.HomePresenterNesnesi?.HomeInteractor?.HomePresenter = presenter
    }
}
