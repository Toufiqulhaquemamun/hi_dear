enum RequestStatus { not_sent, sent}
enum ApproveStatus { accept, reject}

class UserRequest {
  final String name, joinTime, image, time;
  final bool isRequestSent;

  UserRequest({
    this.name = '',
    this.joinTime = '',
    this.image = '',
    this.time = '',
    this.isRequestSent = false,
  });
}

List requestData = [
  UserRequest(
    name: "Jenny Wilson",
    joinTime: "Added on 12 Sep",
    image: "assets/images/user.png",
    time: "3m ago",
    isRequestSent: true,
  ),
  UserRequest(
    name: "Esther Howard",
    joinTime: "Added on 3 Sep",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isRequestSent: false,
  ),
  UserRequest(
    name: "Ralph Edwards",
    joinTime: "Added on 22 Sep",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isRequestSent: false,
  ),
  UserRequest(
    name: "Jacob Jones",
    joinTime: "Added on 22 Aug",
    image: "assets/images/user_4.png",
    time: "5d ago",
    isRequestSent: false,
  ),
  UserRequest(
    name: "Albert Flores",
    joinTime: "Added on 18 Sep",
    image: "assets/images/user_5.png",
    time: "6d ago",
    isRequestSent: false,
  ),
  UserRequest(
    name: "Jenny Wilson",
    joinTime: "Added on 19 Sep",
    image: "assets/images/user.png",
    time: "3m ago",
    isRequestSent: false,
  ),
  UserRequest(
    name: "Esther Howard",
    joinTime: "Added on 23 Sep",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isRequestSent: true,
  ),
  UserRequest(
    name: "Ralph Edwards",
    joinTime: "Added on 10 Sep",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isRequestSent: false,
  ),
];
