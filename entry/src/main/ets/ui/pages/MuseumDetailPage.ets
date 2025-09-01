import { NumberCons } from '../../core/constants/NumberCons';
import { AppBar } from '../widgets/AppBar';
import { ArcList, ArcListItem, ArcListAttribute, ArcListItemAttribute, ComponentContent } from '@kit.ArkUI';
import { CategoryItemModel } from '../../core/models/CategoryItemModel';
import { MuseumsViewModel } from '../viewmodels/MuseumsViewModel';
import { SingleMenuItem } from '../widgets/SingleMenuItem';
import { RouteService } from '../../core/services/RouteService';

@Entry
@Component
struct MuseumDetailPage {
  indexVm: MuseumsViewModel = new MuseumsViewModel();
  context: UIContext = this.getUIContext();
  itemModel = RouteService.instance().argument as CategoryItemModel

  build() {
    Column() {
      AppBar();

      Scroll() {
        Column() {
          Image($r(this.itemModel.iconPath ?? `app.media.museums`))
            .width('40%')
            .height('35%')
            .fillColor('#333333')
            .margin({ left: 10 })
            .fillColor(Color.White)
          Text(this.itemModel.description)
            .fontSize(16)
            .fontColor(Color.White)
            .lineHeight(24)
            .padding({ top: 10, left: 15, right: 15 })
            .margin({ bottom: 50 })
        }.width('100%')
      }
    }
    .alignItems(HorizontalAlign.Center)
    .width('100%')
  }
}