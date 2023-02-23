//8. Создайте класс User, у которого есть поле email.
//Реализуйте два наследника данного класса AdminUser и GeneralUser.
//Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @.
//Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser.

//Далее реализуйте класс UserManager<T extends User>,
//у которого будет храниться список пользователей и будут методы добавления или удаления их. Также в UserManager реализуйте метод,
//который выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @. Проверьте реализованные методы на практике.

List<User> users = [];

class User {
  String email;

  String? getMailSystem;
  User(this.email);
}

class AdminUser extends User with GetMailSystem {
  AdminUser(super.email);
}

class GeneralUser extends User with GetMailSystem {
  GeneralUser(super.email);
}

mixin GetMailSystem on User {
  get getMailSystem {
    List<String> domen = this.email.split("@");
    return (domen[1]);
  }
}

class UserManager<T extends User> {
  static addUser(user) {
    users.add(user);
    print("Добвлен пользователь ${user.email}");
    return (users);
  }

  static removeUser(user) {
    if (users.contains(user)) {
      users.remove(user);
      print("Удален пользователь ${user.email}");
      return (users);
    } else {
      print("Пользователя ${user.email} не существует");
    }
  }

  static printUser() {
    List<String> listUsers = [];
    for (var i = 0; i < users.length; i++) {
      if (users[i] is AdminUser) {
        var sf = users[i].getMailSystem;
        listUsers.add(sf!);
      } else
        listUsers.add(users[i].email);
    }
    print(listUsers);
  }
}

void main() {
  var user1 = User("ostrokril@mail.ru");
  var user2 = AdminUser("admin@administrator.ru");
  var user3 = GeneralUser("ivan@ya.ru");
  var user4 = User("petr@gmail.ru");
  var user2domen = user2.getMailSystem; // вывод домена после @
  print(user2domen);

  UserManager.addUser(user1); // добавить пользователя
  UserManager.addUser(user2); // добавить пользователя
  UserManager.addUser(user3); // добавить пользователя
  UserManager.addUser(user4); // добавить пользователя
  UserManager.printUser(); // Вывод всех пользователей

  UserManager.removeUser(user1); // Удаление пользователя
  UserManager.printUser(); // Вывод всех пользователей после удаления
}
