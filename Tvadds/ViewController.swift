//
//  ViewController.swift
//  Tvadds
//
//  Created by Ravi Thakur on 19/11/20.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADInterstitialDelegate{
    
    @IBOutlet weak var medias: GADInterstitial?
    
    
    @IBOutlet weak var baneers: GADBannerView!
    
    
    
    static let homeadid = "ca-app-pub-7978503456476850/4272414200"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.medias = creatAd()

        
    
    }
    
    func loadbanner(){
        
        baneers.rootViewController = self
        baneers.adUnitID = "ca-app-pub-7978503456476850/5835943164"
        baneers.backgroundColor = .secondarySystemBackground
        baneers.load(GADRequest())
        
    }
    
    
    private func creatAd() -> GADInterstitial{
        let ad = GADInterstitial(adUnitID: "ca-app-pub-7978503456476850/4272414200")
        ad.delegate = self
        ad.load(GADRequest())
        return ad
    }
    
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }
    
    
    @IBAction func next(_ sender: Any) {
        
        if medias?.isReady == true{
            medias?.present(fromRootViewController: self)
        }
    
        loadbanner()
        
    }
    
    


}

