//
//  HomeRouter.swift
//  TheMovieDB
//
//  Created by serhat yaroglu on 12.03.2022.
//

import Foundation
class HomeRouter : PresenterToRouterHomeProtocol {
    static func createModule(ref: ViewController) {
        let presenter : ViewToPresenterHomeProtocol & InteractorToPresenterHomeProtocol = HomePresenter()
        //View controller için
       // ref.HomePresenterNesnesi = presenter
        //Presenter için
      //  ref.HomePresenterNesnesi?.HomeInteractor = HomeInteractor()
       // ref.HomePresenterNesnesi?.HomeView = ref
        //Interactor için
            // ref.HomePresenterNesnesi?.HomeInteractor?.HomePresenter = presenter
    }
}
