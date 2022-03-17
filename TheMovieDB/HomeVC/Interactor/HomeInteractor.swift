//
//  HomeInteractor.swift
//  TheMovieDB
//
//  Created by serhat yaroglu on 12.03.2022.
//

import Foundation
import Alamofire
class HomeInteractor : PresenterToInteractorHomeProtocol {
    var HomePresenter: InteractorToPresenterHomeProtocol?

    func MovieAllPhotoGet(searchWords:String) {
        AF.request("https://api.themoviedb.org/3/search/movie?api_key=c8d659832399d087c74febf080a885b5&language=en-US&&page=1&query=\(searchWords)",method: .get).responseJSON{ response in
            if let data = response.data{
                do{
                    let response = try JSONDecoder().decode(Movie.self, from: data)
                    var dataList = [Result]()
                    if let responseData = response.results{
                        dataList = responseData
                        for i in dataList{
                            print("\(i.originalTitle)")

                        }
                   
                    }
                    self.HomePresenter?.presenterToSendData(searchList: dataList)
                }catch{
                    print("hata mesaji\(error.localizedDescription)")
                }
            }
        }
    

    
    
    }
}
