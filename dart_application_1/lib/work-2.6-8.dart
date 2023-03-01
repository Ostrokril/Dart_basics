// 8. Создайте класс User, у которого есть поле email.
// Реализуйте два наследника данного класса AdminUser и GeneralUser.
// Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @.
// Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser.
// Далее реализуйте класс UserManager<T extends User>,
// у которого будет храниться список пользователей и будут методы добавления или удаления их. Также в UserManager реализуйте метод,
// который выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @. Проверьте реализованные методы на практике.
//

class User {
  String email;
  User(this.email);
}

class AdminUser extends User with GetMailSystem {
  AdminUser(super.email);
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

mixin GetMailSystem on User {
  get getMailSystem {
    // метод [getMailSystem] возвращает домен почты пользователя.
    List<String> domen = email.split("@");
    return (domen[1]);
  }
}

class UserManager<T extends User> {
  List<T> users = [];

  List<T> addUser(user) {
    // Метод [addUser] принимает пользователя и добавляет в список [users].
    users.add(user);
    print("Добвлен пользователь ${user.email}");
    return (this.users);
  }

  List<T> removeUser(user) {
    // Метод [removeUser] принимает пользователя и удаляет из списока [users].
    if (users.contains(user)) {
      users.remove(user);
      print("Удален пользователь ${user.email}");
      return (users);
    } else {
      print("Пользователя ${user.email} не существует");
      return (users);
    }
  }

  List<String> printUser() {
    // Метод [printUser] выводит почтовые адреса пользователей из списка [users]. Если пользователь типа <AdminUser>, то выводит домен почты пользователя.
    List<String> listUsers = [];
    for (var i = 0; i < users.length; i++) {
      if (users[i] is AdminUser) {
        AdminUser userAdmin = users[i] as AdminUser;
        listUsers.add(userAdmin.getMailSystem);
      } else {
        listUsers.add(users[i].email);
      }
    }
    print(listUsers);
    return listUsers;
  }
}
