# qr_plus changelog

## 1.1.4

- fix: fixes issue where changing encryption key from default would not allow data to be transferred

## 1.1.3

- fix: fixes issue where qr code reader is too slow and not responding fast enough

## 1.1.2

- fix: adds missing fields for `QrPlusReaderController`

## 1.1.1

- fix: exports `QrPlusReaderController` for reader customization

## 1.1.0

- fix: fixes issues with dependencies
- BREAKING CHANGE: `allowDuplicates` on `QrPlusReader` is deprecated in favor of `DetectionSpeed` on `QrPlusReaderController`

## 1.0.1

- fix: fixes issues with pub scores and github workflows

## 1.0.0

- feat: initial release
