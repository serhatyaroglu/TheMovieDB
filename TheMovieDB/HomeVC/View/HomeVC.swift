//  ViewController.swift
//  TheMovieDB
//  Created by serhat yaroglu on 12.03.2022.

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var HomePresenterNesnesi:ViewToPresenterHomeProtocol?
    var searchList = [Result]()
    var searchFilteredMovieList = [Result]()
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeRouter.createModule(ref: self)
        
        HomePresenterNesnesi?.HomeInteractor?.MovieAllPhotoGet(searchWords: "Spider")

        tableView.delegate = self
        tableView.dataSource = self
        SearchBar.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Todetail"{
            let movie = sender as? Result
            let goToVC = segue.destination as! DetailVC
            goToVC.movieData =  movie
            
            
        }
    }
   
}
extension HomeVC : PresenterToViewHomeProtocol {
    func vieweToSendData(searchList:Array<Result>){
        self.searchList = searchList
       // self.searchFilteredMovieList = searchList
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
extension HomeVC:UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let searchedWord = searchText.lowercased()
        HomePresenterNesnesi?.HomeInteractor?.MovieAllPhotoGet(searchWords: searchedWord)
        self.tableView.reloadData()
    }
}
extension HomeVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let search = searchList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchListCell", for: indexPath) as! HomeTableViewCell
        //tek label ile yap
        cell.movieNameLabel.text = "\(search.originalTitle!) - \(search.releaseDate!)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieDetail = searchList[indexPath.row]
        performSegue(withIdentifier: "Todetail", sender: movieDetail)
    }
    
    
}
