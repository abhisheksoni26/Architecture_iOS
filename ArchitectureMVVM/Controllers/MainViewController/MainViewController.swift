//
//  MainViewController.swift
//  ArchitectureMVVM
//
//  Created by Janam Soni on 08/07/24.
//

import UIKit

class MainViewController: UIViewController {

    
    //IBoutlets:
    @IBOutlet weak var tableView: UITableView!
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView() {
        self.title = "Main View"
        
        setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }

}
