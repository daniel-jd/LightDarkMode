//
//  BaseViewController.swift
//  LightDarkMode
//
//  Created by Daniel Yamrak on 28.08.2021.
//

import UIKit

class BaseViewController: UIViewController {

    var themeManager = ThemeManager.shared

    private(set) var backgroundColor: UIColor = .systemBackground
    private(set) var textColor: UIColor = .label
    private(set) var primaryColor: UIColor = .black

    func setThemeColors() {
        themeManager.loadThemeFromUserDefaults()
        backgroundColor = themeManager.currentTheme.backgroundColor
        textColor = themeManager.currentTheme.textColor
        primaryColor = themeManager.currentTheme.primaryColor
    }

}
