class Quote {
  String? id;
  String? content;
  String? author;
  String? authorId;
  List? tags;
  int? length;

  Quote(
      {this.id,
      this.content,
      this.author,
      this.authorId,
      this.tags,
      this.length});

  Quote.fromJson(Map json)
      : content = json['content'],
        id = json['_id'],
        author = json['author'],
        authorId = json['authorId'],
        tags = json['tags'],
        length = json['length'];

  String? getId() {
    return id;
  }

  String? getContent() {
    return content;
  }

  String? getAuthor() {
    return author;
  }

  String? getAuthorId() {
    return authorId;
  }

  List? getTags() {
    return tags;
  }

  int? getLenght() {
    return length;
  }
}
