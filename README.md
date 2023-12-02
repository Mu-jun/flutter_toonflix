## setState

- 상태가 변하였으므로 Widget에게 상태가 변하였음을 알림.
- Widget이 다시 빌드함.

## BuildContext

- 부모노드의 정보가 들어있는 곳.

## StatefulWidget의 생명주기(Lifecycle)

- statelessWidget을 statefulwiget으로 변경할 경우
  statefulwiget은 생명주기를 관리하기 때문에
  앱을 다시 시작해주어야 오류가 안 생긴다.
- 이를 통해 이벤트, 스트림 등을 관리할 수 있다.

### initState 메서드

- 빌드 전에 오직 한 번 호출됨.

### build 메서드

- 화면을 빌드함.

### despose 메서드

- Widget이 화면에서 제거될 때 호출됨.

# Reference Design

- https://dribbble.com/shots/19858341-Finnancial-Mobile-IOS-App

# flutter_toonflix

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
