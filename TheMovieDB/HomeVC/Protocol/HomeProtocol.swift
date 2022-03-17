//
//  HomeProtocol.swift
//  TheMovieDB
//
//  Created by serhat yaroglu on 12.03.2022.
//

import Foundation

protocol ViewToPresenterHomeProtocol {
    var HomeInteractor:PresenterToInteractorHomeProtocol? {get set}
    var HomeView:PresenterToViewHomeProtocol? {get set}
    
    func MovieAllDownload(searchWords:String)
}


protocol PresenterToInteractorHomeProtocol {
    var HomePresenter:InteractorToPresenterHomeProtocol? {get set}
    
    func MovieAllPhotoGet(searchWords:String)
}
protocol InteractorToPresenterHomeProtocol {
    func presenterToSendData(searchList:Array<Result>)
}

protocol PresenterToViewHomeProtocol {
    func vieweToSendData(searchList:Array<Result>)
}

protocol PresenterToRouterHomeProtocol {
    static func createModule(ref:HomeVC)
}
