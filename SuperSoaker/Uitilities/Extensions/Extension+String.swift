//
//  Extension+String.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 03/08/23.
//

import Foundation
import UIKit

extension String{
    /// This function remove tildes from a string and returns it
    func removeTildes() -> String{
            let mutableString = NSMutableString(string: self)
            CFStringTransform(mutableString, nil, kCFStringTransformStripCombiningMarks, false)
            return String(mutableString)
        }
    
}


extension UIImageView {
    /// This function set an image from internet in a UIImgeView you need  a url
    /// let imageView = UIImageView()
    /// let imageUrl = URL(string: "https://www.example.com/image.jpg")
    /// imageView.setImageFromURL(imageUrl)
    func setImageFromURL(_ url: URL?) {
        let imageUrl = URL(string: "https://www.example.com/image.jpg")
        
        guard let url = url else {
            return
        }

        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, let image = UIImage(data: data), error == nil else {
                return
            }
            DispatchQueue.main.async {
                self?.image = image
            }
        }.resume()
    }
}
