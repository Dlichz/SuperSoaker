//  DashboardViewController.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 04/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var montoLabel: UILabel!
    @IBOutlet weak var cuentasTabla: UITableView!
    
    var presenter: Dashboard_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Jellow"
        montoLabel.text = "$10000"
        
    }
    
    @objc func addButtonTapped(){
        print("Hola mundo")
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension DashboardViewController: Dashboard_PresenterToViewProtocol {
}
