//  DashboardViewController.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 04/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

struct Cuentas{
    var nombre: String
    var imagen: String
}

class DashboardViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var montoLabel: UILabel!
    @IBOutlet weak var cuentasTabla: UITableView!
    @IBOutlet weak var addAcount: UIButton!
    
    var presenter: Dashboard_ViewToPresenterProtocol?
    var cuentas = [Cuentas]()
    var saldoTotal : Double?
    

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Patrimonio combinado aproximado"

        montoLabel.text = "$\(saldoTotal?.description ?? "0.00")"
        
        cuentasTabla.dataSource = self
        cuentasTabla.delegate = self

        let nib = UINib(nibName: "DashboardTableViewCell", bundle: nil)
        cuentasTabla.register(nib, forCellReuseIdentifier: "DashboardTableViewCell")

    }
    
    @IBAction func actionBtn(_ sender: Any) {
        let vc = AddAccountRouter.createModule()
        present(vc, animated: true)
    }
    
}

// MARK: - P R E S E N T E R · T O · V I E W
extension DashboardViewController: Dashboard_PresenterToViewProtocol {
}

extension DashboardViewController : UITableViewDataSource & UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cuentas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DashboardTableViewCell", for: indexPath) as? DashboardTableViewCell else {
            return UITableViewCell()
        }
        
        cell.titleLabel.text = cuentas[indexPath.row].nombre
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionaste el elemento \(indexPath.row)")
    }
    
    
}
