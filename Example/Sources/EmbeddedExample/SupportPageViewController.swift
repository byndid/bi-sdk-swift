import UIKit
import Anchorage
import BeyondIdentityEmbedded

class SupportPageViewController: ScrollableViewController {
    private let viewModel: EmbeddedViewModel

    lazy var webView: WebView = {
        let view = WebView()
        return view
    }()

    init(viewModel: EmbeddedViewModel) {
        self.viewModel = viewModel
        super.init()
        view.backgroundColor = UIColor.systemBackground
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.async {
            self.webView.load(Localized.supportPageUrl.string)
        }

        let stack = UIStackView(arrangedSubviews: [
            webView,
        ]).vertical()

        view.addSubview(stack)
        stack.horizontalAnchors == view.horizontalAnchors
        stack.verticalAnchors == view.verticalAnchors
        stack.alignment = .fill
    }

}
