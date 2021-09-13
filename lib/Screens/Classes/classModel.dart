class ClassModel {
  //topic
  final bool topicbool;
  final String topic;
  //subTopic
  final bool subtopicbool;
  final String subtopic;
  //search result
  final bool searchbool;
  final String search;
  final String searchResultText1;
  final String searchResultText2;
  final String searchResultText3;
  //comment
  final String text;
  final String sender;
  final bool isMe;

  ClassModel({
    this.text,
    this.sender,
    this.isMe,
    this.searchbool,
    this.search,
    this.searchResultText3,
    this.searchResultText2,
    this.searchResultText1,
    this.topic,
    this.topicbool,
    this.subtopic,
    this.subtopicbool,
  });
}

List<ClassModel> classData = [
  //topic
  ClassModel(
    topic: 'Virtual work',
    topicbool: true,
  ),

  //subtopic
  ClassModel(
    subtopic: 'imaginary load',
    subtopicbool: true,
  ),

  //comment

  ClassModel(
    text: 'Is this Actually helpful',
    sender: 'Anthonia',
    isMe: false,
  ),
  ClassModel(
    text: 'we are being taught so it most like is',
    sender: 'jane',
    isMe: false,
  ),

  //search bool
  ClassModel(
    searchbool: true,
    search: 'is virtual work proven?',
    searchResultText1: 'well its very likely but not definite',
    searchResultText2: 'there is no certainty in theory',
    searchResultText3: 'it describes to a high degree but isnt totally certain',
  ),

  //comment
  ClassModel(
    text: 'is there a practical show of this',
    sender: 'johnson',
    isMe: true,
  ),
  ClassModel(
    text: 'omo this thing should sha be easy sha',
    sender: 'Amadi',
    isMe: false,
  ),
  ClassModel(
    text: 'i think imaginary load helps perceive actual load',
    sender: 'lizzy',
    isMe: false,
  ),
  ClassModel(
    searchbool: true,
    search: 'is virtual work proven?',
    searchResultText1: 'well its very likely but not definite',
    searchResultText2: 'there is no certainty in theory',
    searchResultText3: 'it describes to a high degree but isnt totally certain',
  ),

  // ClassModel(),
  // ClassModel(),
  // ClassModel(),
  // ClassModel(),
  // ClassModel(),
  // ClassModel(),
  // ClassModel(),
];
