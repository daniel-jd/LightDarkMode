//
//  ViewController.swift
//  LightDarkMode
//
//  Created by Daniel Yamrak on 23.07.2021.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var regularLabel1: UILabel!
    @IBOutlet weak var regularLabel2: UILabel!
    @IBOutlet weak var regularLabel3: UILabel!
    @IBOutlet weak var regularLabel4: UILabel!

    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var regularImage1: UIImageView!
    @IBOutlet weak var regularImage2: UIImageView!
    @IBOutlet weak var regularImage3: UIImageView!
    @IBOutlet weak var regularImage4: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Make default Theme to be Light
        overrideUserInterfaceStyle = .light

        setupView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        updateUI()
    }

    private func setupView() {
        makeRoundCornersWith(radius: 8)
        setCustomFonts()
    }
    
    private func makeRoundCornersWith(radius: CGFloat) {
        bigImage.layer.cornerRadius = radius
        regularImage1.layer.cornerRadius = radius
        regularImage2.layer.cornerRadius = radius
        regularImage3.layer.cornerRadius = radius
        regularImage4.layer.cornerRadius = radius
    }

    private func setCustomFonts() {
        headerLabel.font = .header
        titleLabel.font = .title
        regularLabel1.font = .regular
        regularLabel2.font = .regular
        regularLabel3.font = .regular
        regularLabel4.font = .regular
    }

    override func updateUI() {
        super.updateUI()
        let textColor = themeManager.currentTheme.textColor
        headerLabel.textColor = textColor
        titleLabel.textColor = textColor
        regularLabel1.textColor = textColor
        regularLabel2.textColor = textColor
        regularLabel3.textColor = textColor
        regularLabel4.textColor = textColor
    }

}

// MARK: Extension UIFont

extension UIFont {
    static func sansProRegular(_ size: CGFloat) -> UIFont {
        return UIFont(name: "SourceSansPro-Regular", size: size) ?? UIFont.systemFont(ofSize: size)
    }

    static func sansProSemiBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: "SourceSansPro-SemiBold", size: size) ?? UIFont.systemFont(ofSize: size)
    }

    static func sansProBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: "SourceSansPro-Bold", size: size) ?? UIFont.systemFont(ofSize: size)
    }

    static var header: UIFont {
        UIFont(name: "SourceSansPro-Bold", size: 36)!
    }
    static var title: UIFont {
        UIFont(name: "SourceSansPro-SemiBold", size: 26)!
    }
    static var regular: UIFont {
        UIFont(name: "SourceSansPro-Regular", size: 17)!
    }

}
