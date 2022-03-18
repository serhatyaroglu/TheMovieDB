//
//  DetailVC.swift
//  TheMovieDB
//
//  Created by serhat yaroglu on 17.03.2022.
//

import UIKit
import Kingfisher
class DetailVC: UIViewController {
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var pointLabel: UILabel!
    
    @IBOutlet weak var savedButton: UIButton!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    var DetailPresenterNesnesi:ViewToPresenterDetailProtocol?
    let userDefaults = UserDefaults.standard
   
    var movieData:Result?

    override func viewDidLoad() {
        super.viewDidLoad()
       

        movieNameLabel.text = userDefaults.string(forKey: (movieData?.originalTitle)!)
        let imageData = String("https://image.tmdb.org/t/p/w500\(movieData?.backdropPath)")
        userDefaults.setValue(imageData, forKey: "savedImage")

        if let movie = movieData{
            movieNameLabel.text = movie.originalTitle
            commentLabel.text = movie.overview
            movieImageView.kf.setImage(with: URL(string: "https://image.tmdb.org/t/p/w500\(movie.backdropPath ?? "")") )
        }
        DetailRouter.createModule(ref: self)

    }
    

    @IBAction func addFavoriteButton(_ sender: Any) {
 
    }
   

}
