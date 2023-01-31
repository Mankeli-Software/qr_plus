## qr

Advanced all-in-one qr code package. This package is a wrapper around some of the most popular qr-code related packages. It uses
[qr_flutter](https://pub.dev/packages/qr_flutter) for rendering the qr-codes and [qr_code_scanner](https://pub.dev/packages/qr_code_scanner) for reading the qr-codes.

## Motivation
Imagine building an application which utilizes qr-codes for a score system. There would two kinds of users; players and referees. Players can display their user id as qr-code, which referees can read to give the player points. In this scenario, we would have to build some sort of anti-cheating system, so that the players can't just show a screenshot of other players qr-codes to give the points to the wrong user. This is a simplified scenario that this package solves. 

## How does it work?
This package splits the given data into multiple parts, adds timestamp validations and encrypts the data. The multiple parts are then displayed so that they change within a certain interval.



