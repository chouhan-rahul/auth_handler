![auth-handler](https://user-images.githubusercontent.com/82075108/186701189-dbadf772-f7c0-44be-a0a7-128621e7a0a5.svg)

[![chouhan-rahul](https://user-images.githubusercontent.com/82075108/182797956-c3db4825-97a8-462a-a89a-39772876bbd1.svg)](https://github.com/chouhan-rahul)
_[![buymeacoffee](https://user-images.githubusercontent.com/82075108/182797941-5ad09afd-7c74-4085-8130-819402cf7eaa.svg)](https://www.buymeacoffee.com/rahulchouhan)_
_[![ko-fi](https://user-images.githubusercontent.com/82075108/182797959-bd835cdb-7223-4b16-bf1e-284466d0658f.svg)](https://ko-fi.com/rahulchouhan)_
_[![paypal](https://user-images.githubusercontent.com/82075108/182797963-09475375-9a0a-4342-8e9d-08037d4ba343.svg)](https://paypal.me/rahu1chouhan)_

### Become a sponsor

[![sponsor](https://user-images.githubusercontent.com/82075108/182797969-11208ddc-b84c-4618-8534-18388d24ac18.svg)](https://github.com/sponsors/chouhan-rahul)

# AuthHandler

The Flutter `AuthHandler` package is fast and simple to use. An OTP is sent to the recipient via email, which can be used to verify their account information.

# AuthHandler Configuration

First, you need to create a `AuthHandler` instance. You need to follow the steps below

```dart
AuthHandler authHandler = AuthHandler();
```

If you want to use the default configuration, you can use this step.

```dart
authHandler.config();
```

If you want to use the custom configuration, you can use this step, You need to pass in the following parameters.

```dart
authHandler.config(
  senderEmail: "noreply@copyit.dev",
  senderName: "Copyit",
  otpLength: 6,
);
```

# To send an OTP to recipient's email address, follow this step

```dart
authHandler.sendOtp(emailController.text);
```

# Here's how to verify the OTP

```dart
authHandler.verifyOtp(otpController.text);
```

# Report bugs or issues

You are welcome to open a _[ticket](https://github.com/chouhan-rahul/auth_handler/issues)_ on github if any problems arise. New ideas are always welcome.

# Copyright and License

> Copyright © 2022 **[Rahul Chouhan](https://rahulchouhan.me)**. Licensed under the _[MIT LICENSE](https://github.com/chouhan-rahul/auth_handler/blob/main/LICENSE)_.
