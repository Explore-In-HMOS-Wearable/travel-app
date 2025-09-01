import { CategoryItemModel } from '../../core/models/CategoryItemModel';
import { BaseViewModel } from '../../core/services/BaseViewModel';

@ObservedV2
export class MuseumsViewModel extends BaseViewModel {
  @Trace isInited: boolean = false;
  @Trace menuModelList: CategoryItemModel[];

  constructor() {
    super();
    this.initVm();
    this.menuModelList =
      [new CategoryItemModel(`Lauvre Museum`, 'ui/pages/MuseumDetailPage', `app.media.louvre_museum`, `1.4 km`,
        `The Louvre Museum in Paris is one of the world's largest and most famous art museums. Home to thousands of works, including the iconic Mona Lisa and Venus de Milo, it offers a vast collection spanning from ancient civilizations to the Renaissance. A must-visit for art lovers, history enthusiasts, and culture seekers.`),
        new CategoryItemModel(`Prado Museum`, 'ui/pages/MuseumDetailPage', `app.media.prado_museum`, `3.2 km`,
          `The Prado Museum in Madrid is Spain's premier art museum, renowned for its extensive collection of European art. It houses masterpieces from artists like Velázquez, Goya, El Greco, and Titian, showcasing works from the 12th to the early 20th century. The museum is a cultural treasure, offering an in-depth look at Spain's artistic heritage.`),
        new CategoryItemModel(`British Museum`, 'ui/pages/MuseumDetailPage', `app.media.british_museum`, `2.7 km`,
          `The British Museum in London is one of the world’s largest and most comprehensive museums, featuring a vast collection of art, antiquities, and artifacts from across the globe. Its treasures include the Rosetta Stone, ancient Egyptian mummies, and Greek sculptures like the Parthenon Marbles. A must-see for history buffs and cultural explorers.`),]

  }

  initVm() {
    this.isInited = true;
  }
}
