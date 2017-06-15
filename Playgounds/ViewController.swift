//
//  ViewController.swift
//  Playgounds
//
//  Created by Jose Aponte on 4/10/17.
//  Copyright © 2017 Tappsi. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController
{
    @IBOutlet weak var textFieldOrigin: UITextField!
    @IBOutlet weak var textFieldDestination: UITextField!
    
    var userLocation:CLLocation?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //4.809744, -74.101962
        userLocation = CLLocation(latitude: 4.809744, longitude: -74.101962)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    @IBAction func BookRideAction(_ sender: UIButton)
    {
        guard let _userLocation = userLocation else {
            print("No user location")
            return
        }
        
        self.bookRide(fromLocation: _userLocation)
    }
    
    
    func bookRide(fromLocation: CLLocation)
    {
        
    }
}

enum TappsiType {
    case taxi
    case messaging
}

enum PaymentMethodType {
    case cash
    case voucher
    case promoCode
    case creditCard
}

class BookingRequest
{
    var tappsiType:TappsiType?
    var originAddress:String?
    var destinationAddress:String?
    var originLatitude:Double?
    var originLongitude:Double?
    var destinationLatitude:Double?
    var destinationLongitude:Double?
    var originNeighborhood:String?
    var city:String?
    var state:String?
    var country:String?
    var paymentMethod:PaymentMethodType?
    
}










