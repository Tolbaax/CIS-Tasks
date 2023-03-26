class PostModel {
  final String image;
  final String title;
  final int commentsNumber;
  final bool isLiked;
  final String date;
  final String desc;

  PostModel({
    required this.image,
    required this.title,
    required this.commentsNumber,
    required this.isLiked,
    required this.date,
    required this.desc,
  });
}

List<PostModel> posts = [
  PostModel(
    image:
        'https://images.unsplash.com/photo-1580273916550-e323be2ae537?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    title: 'Technical Squads',
    commentsNumber: 0,
    isLiked: false,
    date: '13 Feb 2023',
    desc: 'Technical Squads Technical Squads Technical Squads Technical Squads',
  ),
  PostModel(
    image:
        'https://images.unsplash.com/photo-1603189617530-6d32306f57c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
    title: 'Bmw M5',
    commentsNumber: 5,
    isLiked: true,
    date: '11 Mar 2023',
    desc: 'Board 2023 Board 2023 Board 2023 Board 2023 Board 2023',
  ),
  PostModel(
    image:
        'https://images.unsplash.com/photo-1555652736-e92021d28a10?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    title: 'Audi',
    commentsNumber: 28,
    isLiked: false,
    date: '22 Mar 2023',
    desc:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  ),
  PostModel(
    image:
        'https://images.unsplash.com/photo-1604705528621-81b2755a320b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    title: 'Board 2023',
    commentsNumber: 2,
    isLiked: true,
    date: '15 Mar 2023',
    desc: 'Board 2023 Board 2023 Board 2023 Board 2023 Board 2023',
  ),
  PostModel(
    image:
        'https://images.unsplash.com/photo-1598586958772-8bf368215c2a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    title: 'Board 2023',
    commentsNumber: 3,
    isLiked: false,
    date: '7 Feb 2023',
    desc: 'Board 2023 Board 2023 Board 2023 Board 2023 Board 2023',
  ),
];
