@Entry
@Component
export struct AppBar {
  @State timeZoneOffset: number =
    -2; // For UTC+2 we give -2. We need to find a way to find current timezone of location.
  controller: TextClockController = new TextClockController();

  build() {
    Row() {
      TextClock({ timeZoneOffset: this.timeZoneOffset, controller: this.controller })
        .format('hh:mm')
        .fontSize(14)
    }
    .width('100%')
    .padding({ left: 16, right: 16 })
    .margin({top: 2})
    // .shadow({
    //   radius: 10,
    //   color: Color.Grey,
    //   offsetX: 0,
    //   offsetY: 4,
    // })
    .justifyContent(FlexAlign.Center);
  }
}