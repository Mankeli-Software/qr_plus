# qr_plus changelog

## 1.4.0

- fix: snowden mode could not decrypt its own output. `encrypt` 5.0.3 changed
  `IV.fromLength(16)` to return RANDOM bytes instead of zeros, so the renderer
  and the reader each generated a different IV and every code failed to decrypt
  with "Invalid or corrupted pad block". Now uses `IV.allZerosOfLength(16)`,
  which restores the previous behaviour and keeps the wire format
  byte-identical to 1.3.0 and earlier, so older clients still interoperate.
- feat: added `onError` to `QrPlusReader`, reporting a `QrPlusReadError` when a
  code is detected but cannot be decoded. Previously such failures were
  swallowed silently, making an undecryptable code indistinguishable from the
  camera seeing nothing at all.
- test: added crypto regression tests pinning the wire format, and fixed a TTL
  test that asserted nothing because it used a mode without a TTL.
- ci: run on pushes to `main`, not just pull requests. The 1.3.0 dependency
  update was pushed straight to `main` and skipped CI entirely, which is why
  the existing round-trip tests never flagged the regression.

## 1.3.0

- fix: fix issues with snowden mode
- chore: dependency updates
- BREAKING CHANGE: bump ios minimum target to `15.5`

## 1.2.1

- chore: dependency update

## 1.2.0

- fix: convert timestamps to utc before checking TTL
- feat: instead of returning a single `QrPlusAuthenticity`, `onData` returns a list of them in case there are multiple violations
- feat: the reader will now read the code even if TTL is invalid, but the reader will be notified of the expired TTL through the authenticity list on `onData`

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
