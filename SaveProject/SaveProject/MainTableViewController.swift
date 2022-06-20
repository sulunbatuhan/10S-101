//
//  MainTableViewController.swift
//  SaveProject
//
//  Created by batuhan on 20.06.2022.
//

import UIKit


class MainTableViewController: UITableViewController {

    var Data = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
       
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = Data[indexPath.row]
        return cell
    }
    

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Data.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }

    
    // MARK: -  Func
    @IBAction func addBarButton(_ sender: UIBarButtonItem) {
       let Save = UIAlertController(title: "Metin Ekleyin",
                                          message: nil,
                                         preferredStyle: .alert)
        let ekle = UIAlertAction(title: "Ekle",style: .default) { [self] _ in
           let text = Save.textFields?.first?.text
           if text != ""{
               Data.append(text!)
               tableView.reloadData()
           }}
        let cancel = UIAlertAction(title: "Vazgeç",style: .cancel)
        
        Save.addTextField ()
        Save.addAction(ekle)
        Save.addAction(cancel)
        self.present(Save, animated: true)
    }
    
    @IBAction func Delete(_ sender: UIBarButtonItem) {
        Data.removeAll()
        tableView.reloadData()
    }
   
}
