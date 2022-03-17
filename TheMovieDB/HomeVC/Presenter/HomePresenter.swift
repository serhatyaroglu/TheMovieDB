//  HomePresenter.swift
//  TheMovieDB
//  Created by serhat yaroglu on 12.03.2022.

import Foundation

class HomePresenter : ViewToPresenterHomeProtocol {
    var HomeInteractor: PresenterToInteractorHomeProtocol?
    
    var HomeView: PresenterToViewHomeProtocol?
    func MovieAllDownload(searchWords:String) {
        HomeInteractor?.MovieAllPhotoGet(searchWords:searchWords)

    }
    
}
extension HomePresenter : InteractorToPresenterHomeProtocol {
    func presenterToSendData(searchList: Array<Result>) {
        HomeView?.vieweToSendData(searchList: searchList)
    }
    
   
}
