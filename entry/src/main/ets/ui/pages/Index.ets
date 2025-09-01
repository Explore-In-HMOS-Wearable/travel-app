import { NumberCons } from '../../core/constants/NumberCons';
import { AppBar } from '../widgets/AppBar';
import { SingleMenuItem } from '../widgets/SingleMenuItem';
import { ArcList, ArcListItem, ArcListAttribute, ArcListItemAttribute, ComponentContent } from '@kit.ArkUI';
import { IndexViewModel } from '../viewmodels/IndexViewModel';
import { CategoryItemModel } from '../../core/models/CategoryItemModel';

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

    build() {
        Column() {
            AppBar();
            ArcList({ initialIndex: 1, header: this.header }) {
                ForEach(this.indexVm.menuModelList, (item: CategoryItemModel, index: number) => {
                    ArcListItem() {
                        SingleMenuItem(item);
                    }
                    .align(Alignment.Center)
                    .margin({ top: 10 })
                    .width('95%')

                }, (index: number) => index.toString())
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
}