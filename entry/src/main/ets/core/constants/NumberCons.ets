export class NumberCons {
  watchSize: string = '466px'
  static _instance: NumberCons;

  static getInstance() {
    if (!NumberCons._instance) {
      NumberCons._instance = new NumberCons();
    }
    return NumberCons._instance;
  }
}