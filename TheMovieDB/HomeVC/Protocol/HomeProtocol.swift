//
//  HomeProtocol.swift
//  TheMovieDB
//
//  Created by serhat yaroglu on 12.03.2022.
//

import Foundation

protocol ViewToPresenterHomeProtocol {
    var HomeInteractor:PresenterToInteractorHomeProtocol? {get set}
    var HomeView:PresenterToViewHomeProtocol? {get set}    func InstallMovies()
}
protocol PresenterToInteractorHomeProtocol {
    var HomePresenter:InteractorToPresenterHomeProtocol? {get set}
    func GetMovie()
}
protocol InteractorToPresenterHomeProtocol {
}
protocol PresenterToViewHomeProtocol {
}
protocol PresenterToRouterHomeProtocol {
}
