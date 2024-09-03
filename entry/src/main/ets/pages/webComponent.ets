import { webview } from '@kit.ArkWeb';

// @Entry
@Component
export struct WebComponent {
  webviewController: webview.WebviewController = new webview.WebviewController();
  build() {
    Column() {
      Web({ src: 'https://pro.m.jd.com/hm/active/3ejBfFZtaQMQ4RYpBxHekmm9vyrs/index.html', controller: this.webviewController})      .domStorageAccess(true)
        .zoomAccess(true)
        .fileAccess(true)
        .mixedMode(MixedMode.All)
        .width("100%")
        .height("100%")
        // .onPageEnd(() => {
        //   // 预加载https://www.iana.org/help/example-domains。
        //   this.webviewController.prefetchPage('https://www.iana.org/help/example-domains');
        // })
    }
  }
}