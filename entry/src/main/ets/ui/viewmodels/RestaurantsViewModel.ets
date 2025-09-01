import { CategoryItemModel } from '../../core/models/CategoryItemModel';
import { BaseViewModel } from '../../core/services/BaseViewModel';

@ObservedV2
export class RestaurantsViewModel extends BaseViewModel {
  @Trace isInited: boolean = false;
  @Trace menuModelList: CategoryItemModel[];

  constructor() {
    super();
    this.initVm();
    this.menuModelList = [
      new CategoryItemModel(
        `Italian Bistro`,
        'ui/pages/RestaurantDetailPage',
        `app.media.italian_bistro`,
        `0.8 km`,
        `Authentic Italian cuisine in a cozy atmosphere. Our menu features handmade pasta, wood-fired pizzas, and an extensive wine list. Perfect for romantic dinners or family gatherings.`
      ),
      new CategoryItemModel(
        `Sushi Haven`,
        'ui/pages/RestaurantDetailPage',
        `app.media.sushi_haven`,
        `1.5 km`,
        `Fresh sushi and Japanese specialties prepared by master chefs. Enjoy our omakase experience or choose from our à la carte menu featuring the finest seafood imported daily from Tokyo's fish market.`
      ),
      new CategoryItemModel(
        `Burger Junction`,
        'ui/pages/RestaurantDetailPage',
        `app.media.burger_junction`,
        `0.3 km`,
        `Gourmet burgers made with premium ingredients. Our signature Black Truffle Burger and craft beer selection make this the perfect spot for casual dining with friends.`
      ),
      new CategoryItemModel(
        `Mediterranean`,
        'ui/pages/RestaurantDetailPage',
        `app.media.mediterranean`,
        `2.1 km`,
        `Healthy and flavorful dishes inspired by coastal Mediterranean cuisine. Featuring grilled seafood, fresh salads, and our famous hummus platter.`
      ),
      new CategoryItemModel(
        `Steak House`,
        'ui/pages/RestaurantDetailPage',
        `app.media.steak_house`,
        `1.7 km`,
        `Premium cuts of aged beef cooked to perfection. Our dry-aged ribeye and wagyu selections are paired with an award-winning wine collection in an elegant setting.`
      )
    ];
  }

  initVm() {
    this.isInited = true;
  }
}