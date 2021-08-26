//
//  BaseViewController.swift
//  LightDarkMode
//
//  Created by Daniel Yamrak on 26.08.2021.
//

import UIKit

class BaseViewController: UIViewController {

    let themeManager = ThemeManager()

    static func loadTheme() {
        print("Load theme")
    }

}
