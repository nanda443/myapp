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
    messageDate: '24/07/2024',
    mostRecentMessage: 'Hello',	
  ),
  Chat(
    name: 'Ilyasa',
    image: 'images/person2.png',
    messageDate: '24/07/2024',
    mostRecentMessage: 'Hello',	
  ),
  Chat(
    name: 'Ilyasa',
    image: 'images/person3.png',
    messageDate: '24/07/2024',
    mostRecentMessage: 'Hello',	
  )
];