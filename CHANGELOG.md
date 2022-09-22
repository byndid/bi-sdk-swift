# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.4] - 2022-09-20
### Added
- New attributes to the `Credential` model. `Tenant` now has a `displayName` and `Identity` contains a `primaryEmailAddress`.
### Changed
- Replaced existing `authenticate` function with one that now takes two arguments, `url`and `credentialID`. This is now inline with how consumers of the SDK have been using this function.
- Improved usability with SwiftUI by specifying `Hashable` and `Identifiable` on Structs where necessary.