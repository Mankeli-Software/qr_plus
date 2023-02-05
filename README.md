# qr_plus

[![pub package](https://img.shields.io/pub/v/qr_plus.svg)](https://pub.dev/packages/qr_plus)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

An advanced all-in-one QR code package that provides multiple layers of security. This package acts as a wrapper around some of the most popular QR-code related packages. It uses
[qr_flutter](https://pub.dev/packages/qr_flutter) for rendering the QR-codes and [mobile_scanner](https://pub.dev/packages/mobile_scanner) for reading the QR-codes.

## Platform support
## Reader
| Android | iOS | macOS | Web | Linux | Windows |
|---------|-----|-------|-----|-------|---------|
| ✔       | ✔   | ✔     | ✔   | :x:   | :x:     |

## Renderer
| Android | iOS | macOS | Web | Linux | Windows |
|---------|-----|-------|-----|-------|---------|
| ✔       | ✔   | ✔     | ✔   | ✔     | ✔       |

## Motivation
Imagine creating an application that uses QR-codes for a scoring system, where players display their user ID as a QR-code that referees can read to give the player points. In this scenario, you would need to build some sort of anti-cheating system to prevent players from showing a screenshot of another player's QR-code to the referee to get the points credited to the wrong user. This is just one scenario where QR Plus can come in handy.

## Get started (recommended settings)
**IMPORTANT:** You need to have the same security mode on BOTH the reader and renderer, otherwise the reader won't accept the data.

### 1. Configure platform
Since this package is a wrapper around [mobile_scanner](https://pub.dev/packages/mobile_scanner), please follow the steps for platform specific configuration from their documentation.
### 2. Add renderer
```dart
QrPlusRenderer(
    data: 'https://youtu.be/dQw4w9WgXcQ',
    mode: const QrPlusMode.snowden(
        encryptionKey: '<your-encryption-key>', // Your encryption key from .env. See https://pub.dev/packages/flutter_dotenv
    ),
),
```
### 3. Add reader
```dart
QrPlusReader(
    mode: const QrPlusMode.snowden(
        encryptionKey: '<your-encryption-key>', // Your encryption key from .env. See https://pub.dev/packages/flutter_dotenv
    ),
    allowDuplicates: true,
    onData: (data, authenticity) {
        /// Handle the data
    },
),
```

### 4. You're all set!
Enjoy your new safe QR-codes.

## Multiple layers of security
QR Plus offers multiple layers of security, each fixing a single security vulnerability from the previous layer. As you climb up the layers, the QR-codes become more and more secure. Here are the security layers within this package, from least to most secure:
### 1. plain
This layer does not contain any security whatsoever.

### 2. safe
#### Problem
A malicious user could screenshot the QR-code. In the scenario described in the Motivation section, a user could show a screenshot of a QR-code to a referee, which would give points to another user instead of the one who shows the QR-code.

#### Solution
This layer splits the data into multiple pieces and displays a single piece at a time.

### 3. robust
#### Problem
A malicious user could screen record the changing QR-codes and share them with friends.

#### Solution
This layer adds a time-to-live (TTL) to the transmitted data. The QR-code is only valid for a given period of time, and the reader cannot read it if it's too old.

### 4. sound
#### Problem
A malicious user could modify the phone's time zone in the settings to display a QR-code that is valid in the future.

#### Solution
This layer adds time synchronization from a remote NTP server. The user can change the time settings locally, but it won't affect the QR-code.

### 5. paranoid
#### Problem
A malicious user could share their screen in a FaceTime call or turn off network connections to trick TTL and NTP.

#### Solution
This layer adds possible cheating attempt detection. The renderer knows when the device is currently sharing its screen or recording it, or when the user has turned off their network connection. The renderer (malicious user's phone) displays the QR-code normally, but information about this suspicious activity is sent to the reader through the QR-code. It is then up to the reader to decide what to do with this information.

### 6. snowden
#### Problem
A malicious user could read the data with another QR-code reader, manipulate the JSON to be valid, and create new QR-codes with the valid data.

#### Soliution
This layer encrypts the data before sending it. With the encryption key properly stored, only the reader provided by this package can decrypt it.



