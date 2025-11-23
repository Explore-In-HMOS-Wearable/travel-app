import { CategoryItemModel } from '../../core/models/CategoryItemModel'

@Component
export struct SingleMenuItem {
  @Prop item: CategoryItemModel
  @Prop isCircularImage: boolean = false
  @Consume('NavPathStack') pageStack: NavPathStack;

  build() {
    Row() {
      Row() {
        Image($r(this.item.iconPath))
          .width(20)
          .height(20)
          .fillColor('#333333')
          .margin({ left: 10 })
          .borderRadius(this.isCircularImage ? 50 : 0)

        Column() {
          Text(this.item.title)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#333333')
            .margin({ left: 10 })

          if (this.item.distance && this.item.distance.length !== 0) {
            Text(this.item.distance)
              .fontSize(10)
              .fontColor('#333333')
              .margin({ left: 10 })
          }
        }
        .alignItems(HorizontalAlign.Start)
      }

      Image($r('app.media.arrow_front'))
        .width(20)
        .height(20)
        .fillColor('#333333')
        .margin({ right: 10 })
    }
    .width('90%')
    .height(40)
    .backgroundColor(Color.Grey)
    .borderRadius(16)
    .justifyContent(FlexAlign.SpaceBetween)
    .onClick(() => {
      this.pageStack.pushPathByName(this.item.navigationUrl, this.item)
    })
  }
}
