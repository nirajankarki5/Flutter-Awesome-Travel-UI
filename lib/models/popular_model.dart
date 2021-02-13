class Popular {
  String imageUrl;
  String title;
  List<String> date;

  Popular({
    this.imageUrl,
    this.title,
    this.date,
  });
}

List<Popular> popular = [
  Popular(
    imageUrl: 'assets/annapurna.jpg',
    title: 'Annapurna Range',
    date: ['10 feb', '17 feb'],
  ),
  Popular(
    imageUrl: 'assets/manang.jpg',
    title: 'Alpine Home in Manang',
    date: ['01 mar', '06 mar'],
  ),
];
