import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })

      Button('NextPage')
        .fontSize(24)
        .width(200)
        .height(50)
        .margin({ top: 10 })
        .alignRules({
          top: { anchor: 'HelloWorld', align: VerticalAlign.Bottom },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(()=>{
          router.pushUrl({url:'pages/SecondPage'})
        })

    }
    .height('100%')
    .width('100%')
  }
}