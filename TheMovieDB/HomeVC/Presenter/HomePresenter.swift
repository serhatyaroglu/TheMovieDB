//  HomePresenter.swift
//  TheMovieDB
//  Created by serhat yaroglu on 12.03.2022.
import Foundation
class HomePresenter : ViewToPresenterHomeProtocol {
    var HomeInteractor: PresenterToInteractorHomeProtocol?
    var HomeView: PresenterToViewHomeProtocol?
    func InstallMovies() {
        HomeInteractor?.GetMovie()
    }
}
extension HomePresenter : InteractorToPresenterHomeProtocol {
 //   func presenterSendData(listMovie: Array<>){homeView.sendDataView(listMovie:listMovie)}
}
