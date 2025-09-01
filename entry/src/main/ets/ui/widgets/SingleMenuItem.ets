import { CategoryItemModel } from '../../core/models/CategoryItemModel'
import { RouteService } from '../../core/services/RouteService'

@Builder
export function SingleMenuItem(item: CategoryItemModel, isCircularImage: boolean = false) {
  Row() {
    Row() {
      Image($r(item.iconPath))
        .width(20)
        .height(20)
        .fillColor('#333333')
        .margin({ left: 10 })
        .borderRadius(isCircularImage ? 50 : 0)
      Column() {
        Text(item.title)
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor('#333333')
          .margin({ left: 10 })
        if (item.distance.length != 0) {
          Text(item.distance)
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
    RouteService.instance().pushRoute(item.navigationUrl, item)
  })
}
