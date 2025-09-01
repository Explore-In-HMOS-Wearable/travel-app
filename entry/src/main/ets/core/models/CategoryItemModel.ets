export class CategoryItemModel {
  public title: string;
  public navigationUrl: string;
  public iconPath: string;
  public distance: string;
  public description: string;

  constructor(title: string, navigationUrl: string, iconPath: string, distance: string = ``, description: string = ``) {
    this.title = title;
    this.navigationUrl = navigationUrl;
    this.iconPath = iconPath;
    this.distance = distance;
    this.description = description;
  }
}