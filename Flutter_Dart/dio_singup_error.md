Dio Signup Error



며칠동안 속썩였던 dio로 회원가입 form 작성하여 formdata로 만들고 post 요청할 때 content type 이 계속 백엔드에서 application/octet-stream으로 나왔던 오류



해결 : 

```dart
    formData = FormData.fromMap({
      'userInfoCreateReqDto': MultipartFile.fromString(
          jsonEncode({'nickname': nickname, 'age': age, 'gender': gender}),
          contentType: MediaType.parse('application/json')),
      'profileImage': await MultipartFile.fromFile(image.path,
          contentType: MediaType("image", "jpg")),
    });
```

위와 같이 request part로 보낼 때 각각의 타입 명시를 해서 해결함.

이전에는 위의 userInfoCreateReqDtio의 type이 json으로 잘 들어가지 않았었음...
