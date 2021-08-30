//
//  ThemeManager.swift
//  LightDarkMode
//
//  Created by Daniel Yamrak on 26.08.2021.
//

import UIKit

final class ThemeManager {

    static let shared = ThemeManager()

    private(set) var currentTheme: Theme = LightTheme()

    private init() {
        loadThemeFromUserDefaults()
    }

    private var currentThemeType: ThemeType = .light {
        didSet {
            switch currentThemeType {
            case .light:
                currentTheme = LightTheme()
            case .dark:
                currentTheme = DarkTheme()
            case .red:
                currentTheme = RedTheme()
            }
        }
    }

    enum ThemeType: String {
        case light = "LightTheme"
        case dark = "DarkTheme"
        case red = "RedTheme"
    }

    func setCurrentTheme(with theme: ThemeType) {
        currentThemeType = theme
        saveThemeToUserDefaults()
    }

    func saveThemeToUserDefaults() {
        UserDefaults.standard.set(currentThemeType.rawValue, forKey: "UITheme")
        UserDefaults.standard.synchronize()
    }

    func loadThemeFromUserDefaults() {
        if let savedTheme = UserDefaults.standard.object(forKey: "UITheme") as? String {
            currentThemeType = ThemeType(rawValue: savedTheme) ?? ThemeType.light
        }
    }
}
