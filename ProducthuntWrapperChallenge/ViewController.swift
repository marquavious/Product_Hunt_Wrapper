//
//  ViewController.swift
//  ProducthuntWrapperChallenge
//
//  Created by Marquavious on 2/13/17.
//  Copyright © 2017 Marquavious Draggon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getPostFromFirebase(request: PHApiRequest){
        let session = NSMutableURLRequest()
        session.addValue("application/json", forHTTPHeaderField: "Accept")
        session.addValue("application/json", forHTTPHeaderField: "Content-Type")
        session.addValue("Bearer \(APIInformation.key)", forHTTPHeaderField: "Authorization")
        session.addValue("api.producthunt.com", forHTTPHeaderField: "Host")
    }
}

struct APIInformation {
    static var key = "d90f019623eb2849db8c058b55a2bd5fd528a31b92c6c78c941c0c9e5dad4121"
    static var secret = "826b28d24cd2878f94efb8f37be640aeed62deae94ee4cb07dde43d558f58479"
    static var token = "b477f85f9a1cd7d053d5866e64aca951e55acec7c77f08997e9bf8340f8b3f64"
    static var userContext = "Marquavious Draggon"
}

struct PHApiRequest {
    func createUrl() -> String{
        var urlComponients = URLComponents()
        urlComponients.scheme = "https"
        urlComponients.host = "api.producthunt.com"
        urlComponients.path = "/v1/collections?search"
        urlComponients.query = "[featured]=true"
        return urlComponients.string!
    }
}



