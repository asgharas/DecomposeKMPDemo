import SwiftUI
import shared

@main
struct iOSApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self)
    var appDelegate: AppDelegate
    
	var body: some Scene {
		WindowGroup {
            DecomposeApp(appDelegate.root)
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { _ in
                                    LifecycleRegistryExtKt.resume(appDelegate.lifecycle)
                                }
                                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                                    LifecycleRegistryExtKt.pause(appDelegate.lifecycle)
                                }
                                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification)) { _ in
                                    LifecycleRegistryExtKt.stop(appDelegate.lifecycle)
                                }
                                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willTerminateNotification)) { _ in
                                    LifecycleRegistryExtKt.destroy(appDelegate.lifecycle)
                                }
		}
	}
}


