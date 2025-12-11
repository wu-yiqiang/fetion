import Cocoa
import FlutterMacOS

@main
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }

  override func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
    return true
  }
  // override func applicationDidFinishLaunching(_ notification: Notification) {
  //   if let window = NSApplication.shared.windows.first {
  //     window.minSize = NSSize(width: 800, height: 600)
  //     // window.maxSize = NSSize(width: 1200, height: 800) // 设置为相同值可固定大小
      
  //     // 禁止调整窗口大小
  //     // window.styleMask.remove(.resizable)
      
  //     // 可选：禁用最大化按钮
  //     // window.standardWindowButton(.zoomButton)?.isEnabled = false
  //   }
  //   super.applicationDidFinishLaunching(notification)
  // }
}
