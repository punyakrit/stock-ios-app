import UIKit
import WebKit

class WebController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webView = WKWebView()

        // Add the web view as a subview
        view.addSubview(webView)

        // Set constraints for the web view (adjust these according to your needs)
        webView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150), // Top constraint
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40), // Leading constraint
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40), // Trailing constraint
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150) // Bottom constraint
        ])

        webView.navigationDelegate = self

        // Load a URL
        let url = URL(string: "https://groww.in/stocks/filter")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
}
