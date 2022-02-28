// use https://dartpad.dev/

void main() { 
//   User().postComment();
//   Moderator().postComment();
//   Moderator().deleteComment();
//   Publisher().postComment();
//   Publisher().publishArticle();
  Admin().deleteComment();
  Admin().postComment();
  Admin().publishArticle();
}

class User {
  void postComment() {
    print('posted comment');
}
}

class Moderator extends User {
  void deleteComment() {
    print('deleted comment');
}
}

class Publisher extends User with CanPublishArticle {
//   void publishArticle() {
//     print('published article');
// }
}

class Admin extends Moderator with CanPublishArticle {}

mixin CanPublishArticle {
  void publishArticle() {
    print('published article');
}
}