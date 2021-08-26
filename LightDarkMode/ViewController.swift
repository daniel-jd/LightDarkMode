//
//  ViewController.swift
//  LightDarkMode
//
//  Created by Daniel Yamrak on 23.07.2021.
//

import UIKit

class ViewController: UIViewController {

    private let myFontRegular = UIFont(name: "SourceSansPro-Regular", size: 17)
    private let myFontTitle = UIFont(name: "SourceSansPro-SemiBold", size: 26)
    private let myFontHeader = UIFont(name: "SourceSansPro-Bold", size: 36)

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

        setupView()
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
        headerLabel.font = myFontHeader
        titleLabel.font = myFontTitle
        regularLabel1.font = myFontRegular
        regularLabel2.font = myFontRegular
        regularLabel3.font = myFontRegular
        regularLabel4.font = myFontRegular
    }

}

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
}
