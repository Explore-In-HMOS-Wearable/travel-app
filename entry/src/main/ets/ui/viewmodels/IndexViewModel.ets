import { CategoryItemModel } from '../../core/models/CategoryItemModel';
import { BaseViewModel } from '../../core/services/BaseViewModel';

@ObservedV2
export class IndexViewModel extends BaseViewModel {
  @Trace isInited: boolean = false;
  @Trace menuModelList: CategoryItemModel[];

  constructor() {
    super();
    this.initVm();
    this.menuModelList = [new CategoryItemModel(`Museums`, 'ui/pages/Museums', `app.media.museums`),
      new CategoryItemModel(`Restaurants`, 'ui/pages/Restaurants', `app.media.restaurants`)]
  }

  initVm() {
    this.isInited = true;
  }
}
