import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(openSubscriptionSettingsPlugin)
public class openSubscriptionSettingsPlugin: CAPPlugin {
    @objc func triggerOpenSettings(_ call: CAPPluginCall) {
        guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
        UIApplication.shared.open(url, options: [:])
    }

    @objc func triggerOpenSubscriptions(_ call: CAPPluginCall) {
        guard let url = URL(string: "itms://apps.apple.com/account/subscriptions") else { return }
        UIApplication.shared.open(url, options: [:])
    }
}
