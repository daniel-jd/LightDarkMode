//
//  ThemeSelectViewController.swift
//  LightDarkMode
//
//  Created by Daniel Yamrak on 28.08.2021.
//

import UIKit

class ThemeSelectViewController: BaseViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var lightButton: UIButton!
    @IBOutlet weak var darkButton: UIButton!
    @IBOutlet weak var redButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }

    func updateUI() {
        view.backgroundColor = backgroundColor
        navigationController?.navigationBar.barTintColor = backgroundColor
        label.textColor = textColor
    }

    private func setTheme(with themeType: ThemeManager.ThemeType) {
        themeManager.setCurrentTheme(with: themeType)
        setThemeColors()
        updateUI()
    }

    @IBAction func ligthThemeButtonPressed(_ sender: Any) {
        setTheme(with: .light)
    }

    @IBAction func darkThemeButtonPressed(_ sender: Any) {
        setTheme(with: .dark)

    }
    
    @IBAction func redThemeButtonPressed(_ sender: Any) {
        setTheme(with: .red)
    }

}
