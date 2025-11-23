import { NumberCons } from '../../core/constants/NumberCons';
import { AppBar } from '../widgets/AppBar';
import { ArcList, ArcListItem, ArcListAttribute, ArcListItemAttribute } from '@kit.ArkUI';
import { CategoryItemModel } from '../../core/models/CategoryItemModel';
import { RestaurantsViewModel } from '../viewmodels/RestaurantsViewModel';
import { SingleMenuItem } from '../widgets/SingleMenuItem';

@Component
export struct Restaurants {
  indexVm: RestaurantsViewModel = new RestaurantsViewModel();
  context: UIContext = this.getUIContext()
  @Consume('NavPathStack') pageStack: NavPathStack;

  build() {
    NavDestination() {
      Column() {
        AppBar();
        ArcList({ initialIndex: 1 }) {
          ForEach(this.indexVm.menuModelList, (item: CategoryItemModel, index: number) => {
            ArcListItem() {
              SingleMenuItem({ item: item, isCircularImage: true })
            }
            .align(Alignment.Center)
            .margin({ top: 10 })
            .width('95%')

          }, (index: number) => index.toString())
        }
        .width('100%')
        .height('100%')
        .borderRadius(NumberCons.getInstance().watchSize)
        .focusable(true)
        .focusOnTouch(true)
        .defaultFocus(true)
      }
      .backgroundColor(Color.Black)
      .alignItems(HorizontalAlign.Center)
      .width('100%')
    }
    .hideTitleBar(true)
    .hideBackButton(true)
  }
}