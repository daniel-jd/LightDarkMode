//
//  ThemeManager.swift
//  LightDarkMode
//
//  Created by Daniel Yamrak on 26.08.2021.
//

import UIKit

struct ThemeManager {

    static let shared = ThemeManager()

    private var currentThemeType: ThemeType = .light
    var currentTheme: Theme {
        switch currentThemeType {
        case .light:
            return LightTheme()
        case .dark:
            return DarkTheme()
        case .red:
            return RedTheme()
        }
    }

    enum ThemeType: String {
        case light = "LightTheme"
        case dark = "DarkTheme"
        case red = "RedTheme"
    }

    mutating func setCurrentTheme(with theme: ThemeType) {
        currentThemeType = theme
        saveThemeToUserDefaults()
    }

    func saveThemeToUserDefaults() {
        UserDefaults.standard.set(currentThemeType.rawValue, forKey: "UITheme")
    }

    mutating func loadThemeFromUserDefaults() {
        if let savedTheme = UserDefaults.standard.object(forKey: "UITheme") as? String {
            currentThemeType = ThemeType(rawValue: savedTheme) ?? ThemeType.light
        }
    }
}
