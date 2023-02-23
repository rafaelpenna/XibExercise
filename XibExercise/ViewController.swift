//
//  ViewController.swift
//  XibExercise
//
//  Created by Rafael Penna on 23/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    private var nameData: [String] = ["Leclerc", "Max", "Sainz", "Norris", "Vettel"]
    private var imageData: [String] = ["Leclerc", "Max", "sainz", "Norris", "Vettel"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }

    private func configureTableView() {
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(DetailTableViewCell.nib(), forCellReuseIdentifier: DetailTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.identifier, for: indexPath) as? DetailTableViewCell
        cell?.setupCell(name: nameData[indexPath.row], foto: imageData[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

