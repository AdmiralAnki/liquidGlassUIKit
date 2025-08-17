//
//  ViewController.swift
//  liquidGlassUIKit
//
//  Created by Ankith K on 06/08/25.
//

import UIKit

class ChatsViewController: UIViewController {

    private let tableView = UITableView()
    private let cellIdentifier = "SampleCell"
        
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        title = "Chats"
        setupNavigationBar()
        setupTableView()
        setupConstraints()
    }

    
    private func setupNavigationBar() {
        
        navigationItem.title = "TEST"
           navigationController?.navigationBar.prefersLargeTitles = true
           view.backgroundColor = .systemBackground
        
        let firstAction = UIAction(title: "new chat") { action in
            print("new chat")
        }
        
        let secondAction = UIAction(title: "Video call") { action in
            print("Video call")
        }
        
        let thirdAction = UIAction(title: "Help") { action in
            print("Help")
        }
           // Add navigation bar button if needed
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "", image: UIImage(systemName: "ellipsis"), target: self, action: nil, menu: UIMenu(title: "", children: [firstAction, secondAction, thirdAction]))
        
        
//        UIBarButtonItem(
//               barButtonSystemItem: .add,
//               target: self,
//               action: #selector(addButtonTapped)
//           )
        
        
       } 
    
    @objc private func addButtonTapped() {
           print("Add button tapped")
       }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(
            UITableViewCell.self,
            forCellReuseIdentifier: cellIdentifier
        )
        tableView.separatorStyle = .singleLine
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
   

}


extension ChatsViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mockChatData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a reusable cell identified by "SampleCell".
              // This is crucial for performance as cells are reused when they scroll off-screen.
              let cell = tableView.dequeueReusableCell(
                  withIdentifier: cellIdentifier,
                  for: indexPath
              )

              // Get the corresponding data item for the current row
              let dataItem = mockChatData[indexPath.row]

              // Configure the cell with data.
              // For a basic UITableViewCell, you can access its textLabel and detailTextLabel.
              // To use detailTextLabel, the cell style must be .subtitle or .value1 or .value2.
              // We'll cast to UITableViewCell to ensure these properties are available.
              if cell.textLabel?.text == nil { // This is a common way to set up style once
                  cell.textLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
                  cell.textLabel?.numberOfLines = 0 // Allow multiple lines for messages
                  cell.accessoryType = .disclosureIndicator // Adds a ">" disclosure indicator
              }

              cell.textLabel?.text = "\(dataItem.title): \(dataItem.message) (\(dataItem.time))"

              return cell
    }
    
    
}

