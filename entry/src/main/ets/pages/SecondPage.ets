import router from '@ohos.router';
@Entry
@Component
struct SecondPage {
  @State message: string = 'Hi HarmonyOS';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('SecondPageHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })

      Button('Back')
        .fontSize(24)
        .width(100)
        .height(50)
        .onClick(()=>{
          router.back({url:'pages/Index'})
        })
    }
    .height('100%')
    .width('100%')
  }
}