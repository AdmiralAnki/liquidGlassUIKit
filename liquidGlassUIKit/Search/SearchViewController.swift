//
//  SearchViewController.swift
//  liquidGlassUIKit
//
//  Created by Ankith on 17/08/25.
//

import UIKit

class SearchViewController: UIViewController {
    private let searchController = UISearchController(searchResultsController: UIViewController())
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
        navigationItem.searchController = searchController
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
