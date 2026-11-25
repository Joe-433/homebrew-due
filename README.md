# DUE

Releases and the Homebrew cask for **DUE**, a small Mac app for customer calls: press **Ask Apollo** (or ⌃⌥R) and
it sends what the customer just asked to Apollo, EliseAI's assistant, and opens the chat. DUE keeps the last few
minutes of the call in memory, transcribed on your Mac; nothing leaves your Mac until you press.

This repository holds only the app's releases. You need macOS 26 or later and an EliseAI Apollo account.

## Install

**Most people:** download `DUE-<version>.dmg` from the
[latest release](https://github.com/Joe-433/homebrew-due/releases/latest), open it and drag DUE onto Applications.

**With Homebrew**, one line:

```bash
brew tap joe-433/due && brew trust joe-433/due && brew install --cask due
```

(Homebrew asks you to add and trust any repo that isn't its own before installing from it; that's the first two
parts.)

The first time, macOS may say DUE can't be opened: go to System Settings > Privacy & Security and click
**Open Anyway** (once). Then DUE's setup window walks you through your Apollo API key (Apollo > Admin > API Keys >
New API key), the microphone, system audio recording and Apple's speech model.

## Updates

DUE checks this repository for a new release when it starts and every 6 hours, and offers it in a pop-up
(**Update and Restart**, **Later**, **Skip This Version**). It never interrupts a recording.
