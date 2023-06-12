//
//  CalculadoraViewController.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 11/06/23.
//

import UIKit

class CalculadoraViewController: UIViewController {
    
    
    @IBOutlet weak var textfieldIngreso: UITextField!
    @IBOutlet weak var montoUno: UILabel!
    @IBOutlet weak var montoDos: UILabel!
    @IBOutlet weak var montoTres: UILabel!
    @IBOutlet weak var montoCuatro: UILabel!
    @IBOutlet weak var montoCinco: UILabel!
    @IBOutlet weak var montoSeis: UILabel!
    @IBOutlet weak var okBtn: UIButton!
    
    // MARK: - Variables
    var montoIng : String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func actionBtn(_ sender: Any) {
        if let unwrapmontoIng = textfieldIngreso.text{
            if let montoInt = Int(unwrapmontoIng){
                dividirMonto(monto: montoInt)
            }
        }
    }
    
    private func dividirMonto(monto: Int){
        let gf = Double(monto) * 0.29
        let gf1 = Double(monto) * 0.23
        let gf2 = Double(monto) * 0.11
        let gf3 = Double(monto) * 0.08
        let gf4 = Double(monto) * 0.1
        montoUno.text = String(gf.description)
        montoDos.text = String(gf1.description)
        montoTres.text = String(gf2.description)
        montoCuatro.text = String(gf2.description)
        montoCinco.text = String(gf3.description)
        montoSeis.text = String(gf4.description)
    }
}
