# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
## [2.0.8] - 2025-12-05

### Added

- Added structured errors on initialization
- Added the ability to retry Embedded.initialize

## [2.0.7] - 2024-11-07

### Fixed

- Manual invocation type

## [2.0.6] - 2024-11-06

### Changed

- Reduced Size

## [2.0.3] - 2024-09-06

### Changed

- Update authentication flow to improve performance, stability, and security

## [2.0.2] - 2024-08-30

### Added

- New attribute passkeyId has been added to the Passkey model. This ID matches the cloud ID found in the console.

## [2.0.1] - 2023-09-25

### Added

- Added Async/Await support
- New function getAuthenticationContext to retrieve authentication parameters for the ongoing transaction.
- New function authenticateOtp to enable authentication with a one time password.
- New function redeemOtp to enable redeeming a one time password.

## [2.0.0] - 2023-01-09

### Changed

- Rename instances of `Credential` to `Passkey`
- Update example app to authenticate with Beyond Identity by using Invocation Type `manual`
- Nest `State` under `Credential`
- Nest tenantId, realmId, and identityId under appropriate objects in the `Credential`
- Update support links in the example app

### Fixed

- Scheme without a path is now recognized as a valid URL when binding a credential

## [1.0.4] - 2022-09-20

### Added

- New attributes to the `Credential` model. `Tenant` now has a `displayName` and `Identity` contains a `primaryEmailAddress`.

### Changed

- Replaced existing `authenticate` function with one that now takes two arguments, `url`and `credentialID`. This is now inline with how consumers of the SDK have been using this function.
- Improved usability with SwiftUI by specifying `Hashable` and `Identifiable` on Structs where necessary.
