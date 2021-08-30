//
//  BaseViewController.swift
//  LightDarkMode
//
//  Created by Daniel Yamrak on 28.08.2021.
//

import UIKit

class BaseViewController: UIViewController {

    let themeManager = ThemeManager.shared

    func updateUI() {
        view.backgroundColor = themeManager.currentTheme.backgroundColor
        navigationController?.navigationBar.barTintColor = themeManager.currentTheme.backgroundColor
    }

}
