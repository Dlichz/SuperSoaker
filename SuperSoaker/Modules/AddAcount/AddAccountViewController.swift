//  AddAccountViewController.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 19/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class AddAccountViewController: UIViewController {


    var presenter: AddAccount_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 400))
        containerView.backgroundColor = .white
        containerView.center = view.center
        view.addSubview(containerView)
        
        // Crear el label
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 260, height: 30))
        label.text = "Ejemplo de vista programática"
        containerView.addSubview(label)
        
        // Crear el textfield
        let textField = UITextField(frame: CGRect(x: 20, y: 60, width: 260, height: 30))
        textField.placeholder = "Ingresa algo aquí"
        textField.borderStyle = .roundedRect
        containerView.addSubview(textField)
        
        // Crear el botón
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 20, y: 100, width: 260, height: 30)
        button.setTitle("Aceptar", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        containerView.addSubview(button)
        
    }
    
    @objc func buttonTapped() {
            print("Botón presionado")
        self.dismiss(animated: true)
        }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension AddAccountViewController: AddAccount_PresenterToViewProtocol {
}
