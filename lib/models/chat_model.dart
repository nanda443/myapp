class Chat{
  String name;
  String messageDate;
  String mostRecentMessage;
  String image;

  Chat({
    required this.name,
    required this.messageDate,
    required this.mostRecentMessage,
    required this.image,
  });
}

var chatList =[
  Chat(
    name: 'Ilyasa',
    image: 'images/person1.png',
    messageDate: '24/07/2022',
    mostRecentMessage: "Bi, Ilyasa tadi diajari do'a masuk masjid sama uztadz",	
  ),
  Chat(
    name: 'Abdullah',
    image: 'images/person2.png',
    messageDate: '24/07/2022',
    mostRecentMessage: 'Mousenya dimana Bi?',	
  ),
  Chat(
    name: 'Yuli Utami',
    image: 'images/person3.png',
    messageDate: '24/07/2024',
    mostRecentMessage: 'udah maem apa belum, lagi apa?',	
  )
];