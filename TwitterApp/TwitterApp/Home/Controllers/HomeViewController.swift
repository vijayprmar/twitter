//
//  ViewController.swift
//  TwitterApp
//
//  Created by Vijay Parmar on 31/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var btnAddTweet: UIButton!
    @IBOutlet weak var tblHomeFeed: UITableView!
    
    var viewModel = TweetHomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }

    //Initial Setup
    private func initialSetup(){
        
        tblHomeFeed.register(UINib(nibName: "TweetTableViewCell", bundle: nil), forCellReuseIdentifier: "TweetTableViewCell")
        tblHomeFeed.delegate = self
        tblHomeFeed.dataSource = self
        btnAddTweet.layer.cornerRadius = btnAddTweet.frame.height / 2
        tblHomeFeed.reloadData()
    }
    
    //MARK: - Actions
    @IBAction func btnActionAddTweet(_ sender: UIButton) {
        
    }
    
}

//MARK: - Tableview Delegate Datasource
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TweetTableViewCell", for: indexPath)as? TweetTableViewCell else{
            return UITableViewCell()
        }
        cell.viewModel = TweetCellViewModel(tweetData: viewModel.tweetData(indexPath.row))
        cell.setData()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.estimatedRowHeight
    }
    
}
