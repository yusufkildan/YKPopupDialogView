//
//  ViewController.swift
//  YKPopupDialogView
//
//  Created by yusuf_kildan on 23/08/2017.
//  Copyright © 2017 yusuf_kildan. All rights reserved.
//

import UIKit
import YKPopupDialogView

class ViewController: UIViewController {
    
    // MARK: - Views's Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func fadeInFadeOutTapped(_ sender: AnyObject) {
        self.showDialog(.fadeInOut)
    }
    
    @IBAction func zoomInZoomOutTapped(_ sender: AnyObject) {
        self.showDialog(.zoomInOut)
    }
    
    @IBAction func slideBottomBottomTapped(_ sender: AnyObject) {
        self.showDialog(.slideBottomBottom)
    }
    
    @IBAction func slideBottomTopTapped(_ sender: AnyObject) {
        self.showDialog(.slideBottomTop)
    }
    
    @IBAction func slideLeftLeftTapped(_ sender: AnyObject) {
        self.showDialog(.slideLeftLeft)
    }
    
    @IBAction func slideLeftRightTapped(_ sender: AnyObject) {
        self.showDialog(.slideLeftRight)
    }
    
    @IBAction func slideTopTopTapped(_ sender: AnyObject) {
        self.showDialog(.slideTopTop)
    }
    
    @IBAction func slideTopBottomTapped(_ sender: AnyObject) {
        self.showDialog(.slideTopBottom)
        
    }
    
    @IBAction func slideRightRightTapped(_ sender: AnyObject) {
        self.showDialog(.slideRightRight)
    }
    
    @IBAction func slideRightLeftTapped(_ sender: AnyObject) {
        self.showDialog(.slideRightLeft)
    }
    
    fileprivate func showDialog(_ animationPattern: YKPopupDialogAnimationPattern) {
        
        let popupDialogView = YKPopupDialogView()
        popupDialogView.animationDuration = 0.33
        popupDialogView.setTitle("THIS IS THE DIALOG TITLE")
        popupDialogView.setMessage("This is the message section.")
        
        let okButton = popupDialogView.addButton("Ok", type: YKPopupDialogButtonType.default)
        okButton.addTarget(self, action: #selector(okButtonTapped(_:)), for: UIControlEvents.touchUpInside)
        
        let cancelButton = popupDialogView.addButton("Cancel", type: YKPopupDialogButtonType.cancel)
        cancelButton.addTarget(self, action: #selector(cancelButtonTapped(_:)), for: UIControlEvents.touchUpInside)
        
        popupDialogView.show(animationPattern)
    }
    
    func okButtonTapped(_ sender: YKPopupDialogButton) {
        sender.popupDialogView.hide()
    }
    
    func cancelButtonTapped(_ sender: YKPopupDialogButton) {
        sender.popupDialogView.hide(YKPopupDialogAnimationPattern.zoomInOut)// Also you can configure hide animation
    }
    
    @IBAction func showCustomizedPopup(_ sender: Any) {
        let popupDialogView: YKPopupDialogView = YKPopupDialogView()
        
        popupDialogView.closeOnTap = false
        popupDialogView.popupViewCornerRadius = 30
        popupDialogView.buttonAlignment = .horizontal
        popupDialogView.animationDuration = 0.2
        popupDialogView.overlayViewBackgroundColor = UIColor(red: 117.0 / 255.0, green: 117.0 / 255.0, blue: 117.0 / 255.0, alpha: 0.8)
        popupDialogView.imageSize = CGSize(width: 120.24, height: 104.04)
        popupDialogView.setImage(UIImage(named: "geofencePermissionIcon")!)
        
        popupDialogView.setTitle("Enable Geofencing", attributes: [NSFontAttributeName: UIFont(name: "Kanit-SemiBold", size: 17.0)!, NSForegroundColorAttributeName: UIColor(red: 33.0 / 255.0, green: 33.0 / 255.0, blue: 33.0 / 255.0, alpha: 1.0)])
        
        popupDialogView.setMessage("Enable geofencing to get instant notifications for assignments nearby.", attributes: [NSFontAttributeName: UIFont(name: "Kanit-Regular", size: 16.0)!, NSForegroundColorAttributeName: UIColor(red: 117.0 / 255.0, green: 117.0 / 255.0, blue: 117.0 / 255.0, alpha: 1.0)])
        
        
        let cancelButton = popupDialogView.addButton("Cancel", textColor: UIColor(red: 189.0 / 255.0, green: 189.0 / 255.0, blue: 189.0 / 255.0, alpha: 1.0), backgroundColor: UIColor.clear, font: UIFont(name: "Kanit-Medium", size: 17.0)!, cornerRadius: 0)
        cancelButton.addTarget(self, action: #selector(cancelButtonTapped(_:)), for: .touchUpInside)
        
        let enableButton = popupDialogView.addButton("Enable", textColor: UIColor(red: 245.0 / 255.0, green: 0.0 / 255.0, blue: 7.0 / 255.0, alpha: 0.8), backgroundColor: UIColor.clear, font: UIFont(name: "Kanit-SemiBold", size: 18.0)!, cornerRadius: 0)
        enableButton.addTarget(self, action: #selector(enableButtonTapped(_:)), for: .touchUpInside)
        
        popupDialogView.show(YKPopupDialogAnimationPattern.fadeInOut)
    }
    
    @IBAction func showDefaultPopup(_ sender: UIBarButtonItem) {
        let popupDialogView = YKPopupDialogView()
        popupDialogView.setTitle("THIS IS THE DIALOG TITLE")
        popupDialogView.setMessage("This is the message section.")
        
        let okButton = popupDialogView.addButton("Ok", type: YKPopupDialogButtonType.default)
        okButton.addTarget(self, action: #selector(okButtonTapped(_:)), for: UIControlEvents.touchUpInside)
        
        let cancelButton = popupDialogView.addButton("Cancel", type: YKPopupDialogButtonType.cancel)
        cancelButton.addTarget(self, action: #selector(cancelButtonTapped(_:)), for: UIControlEvents.touchUpInside)
        
        popupDialogView.show()
    }
    
    func enableButtonTapped(_ sender: YKPopupDialogButton) {
        sender.popupDialogView.hide()
    }
}
