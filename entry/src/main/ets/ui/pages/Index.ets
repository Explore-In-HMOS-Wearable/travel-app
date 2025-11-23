import { NumberCons } from '../../core/constants/NumberCons';
import { AppBar } from '../widgets/AppBar';
import { ArcList, ArcListItem, ArcListAttribute, ArcListItemAttribute, ComponentContent } from '@kit.ArkUI';
import { IndexViewModel } from '../viewmodels/IndexViewModel';
import { Museums } from './Museums';
import { Restaurants } from './Restaurants';
import { SingleMenuItem } from '../widgets/SingleMenuItem';
import { MuseumDetailPage } from './MuseumDetailPage';

@Builder
function buildText() {
  Column() {
    Text('Around Me')
      .fontSize(18)
      .fontWeight(FontWeight.Bold)
  }.margin(0)
}

@Entry
@Component
struct Index {
  indexVm: IndexViewModel = new IndexViewModel();
  context: UIContext = this.getUIContext()
  header: ComponentContent<Object> = new ComponentContent(this.context, wrapBuilder(buildText));
  @Provide('NavPathStack') pageStack: NavPathStack = new NavPathStack()

  @Builder
  PagesMap(name: string) {
    if (name === 'Museums') {
      Museums()
    } else if (name === 'Restaurants') {
      Restaurants()
    } else if (name === 'MuseumDetailPage') {
      MuseumDetailPage()
    } else if (name === 'SingleMenuItem') {
      SingleMenuItem()
    }

  }

  build() {
    Navigation(this.pageStack) {
      Column() {
        AppBar();
        ArcList({ initialIndex: 1, header: this.header }) {
          ArcListItem() {
            this.singleMenuItem('Museum', 'app.media.museums', this.museums);
          }

          ArcListItem() {
            this.singleMenuItem('Restaurants', 'app.media.restaurants', this.restaurants);
          }
          .align(Alignment.Center)
          .margin({ top: 10 })
          .width('95%')
        }
        .width('100%')
        .height('90%')
        .borderRadius(NumberCons.getInstance().watchSize)
        .focusable(true)
        .focusOnTouch(true)
        .defaultFocus(true)

      }
      .alignItems(HorizontalAlign.Center)
      .width('100%')
    }
    .hideTitleBar(true)
    .navDestination(this.PagesMap)
    .hideBackButton(true)
    .ignoreLayoutSafeArea()
  }

  private museums = () => {
    this.pageStack.pushPathByName('Museums', null);
  }
  private restaurants = () => {
    this.pageStack.pushPathByName('Restaurants', null);
  }

  @Builder
  singleMenuItem(item: string, path: string, onClick: () => void) {
    Button({ type: ButtonType.Normal }) {
      Row() {
        Image($r(path))
          .width(20)
          .height(20)
          .fillColor('#333333')
          .margin({ left: 10 })
          .borderRadius(0)
        Column() {
          Text(item)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#333333')
            .margin({ left: 10 })
        }
        .alignItems(HorizontalAlign.Start)

        Image($r('app.media.arrow_front'))
          .width(20)
          .height(20)
          .fillColor('#333333')
          .margin({ right: 2 })
      }
    }
    .width('90%')
    .height(40)
    .backgroundColor(Color.Grey)
    .borderRadius(16)
    .onClick(onClick)
  }
}