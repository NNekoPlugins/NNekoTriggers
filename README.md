<div align="center">

<span><img src="./Data/NNeko.png" alt="Rendering of a Fantasy stone arch, bedecked with crystals, and filled with a swirling, arcane portal." width="15%"></span>
  
### NNeko's Conditional Triggers

Modular trigger system with DTR integration.

[![Latest Stable](https://img.shields.io/github/v/release/NNekoPlugins/NNekoTriggers?color=blue&label=Stable)](https://github.com/NNekoPlugins/NNekoTriggers/releases/latest)

**[Issues](https://github.com/NNekoPlugins/NNekoTriggers/issues) · [Pull Requests](https://github.com/NNekoPlugins/NNekoTriggers/pulls) · [Releases](https://github.com/NNekoPlugins/NNekoTriggers/releases/latest)**

</div>

---

## About

Provides zone triggers, RNG triggers, job-swap triggers, login triggers, and more.

## Features

- Set a per-character command for:
  - After changing Zones (Teleport, Return, walking outside, et cetera)
  - Changing Classes/Jobs
  - Character Login
- Roleplay Only Mode (Prevents the command from executing if you are not in the "RP" Online Status)
- RNG Mode (Executes the command randomly based on a given range)
- Override Command (Forces the commands for all other triggers to use a master command)

## Commands

| Command                | Description                                      |
| :--------------------- | :----------------------------------------------- |
| /tconfig               | Opens the NNekoTriggers configuration window.    |
| /tconfig toggle        | Disables or enables the entire plugin.           |
| /tconfig dtr           | Toggles the Server Info Bar entries.             |
| /trponly               | Toggles the Roleplay Only trigger behavior.      |
| /trponly on            | Enables the Roleplay Only trigger behavior.      |
| /trponly off           | Disables the Roleplay Only trigger behavior.     |
| /toverride             | Toggles the Command Override feature.            |
| /toverride on          | Enables the Command Override feature.            |
| /toverride off         | Disables the Command Override feature.           |
| /trng                  | Toggles the RNG trigger behavior                 |
| /trng on               | Enables the RNG trigger behavior                 |
| /trng off              | Disables the RNG trigger behavior                |
| /trng min \<number>    | Sets Min to a fixed value. (default is 25)       |
| /trng max \<number>    | Sets Max to a fixed value. (default is 100)      |
| /trng minAdd \<number> | Adds \<number> to the existing Min value.        |
| /trng minSub \<number> | Subtracts \<number> from the existing Min value. |
| /trng maxAdd \<number> | Adds \<number> to the existing Max value.        |
| /trng maxSub \<number> | Subtracts \<number> from the existing Max value. |
| /tgset                 | Toggles the Job-Swap trigger.                    |
| /tgset on              | Enables the Job-Swap trigger.                    |
| /tgset off             | Disables the Job-Swap trigger.                   |
| /tzone                 | Toggles the Zone change trigger.                 |
| /tzone on              | Enables the Zone change trigger.                 |
| /tzone off             | Disables the Zone change trigger.                |
| /tonlogin              | Toggles the Login trigger.                       |
| /tonlogin on           | Enables the Login trigger.                       |
| /tonlogin off          | Disables the Login trigger.                      |

## Installation
>
> **Warning**  
> No support will be provided on any Dalamud official support channel. Please use the [Issues](https://github.com/NNekoPlugins/NNekoTriggers/issues) page for any support requests. Do NOT ask for support anywhere else, as support for 3rd-party plugins is not provided by the Dalamud team.
>
> Additionally, you should understand that this plugin could be detected by other players or a GM, use at your own risk.

This plugin can be installed as a 3rd-party plugin via the Dalamud Plugin Installer. To do so, add the following URL to `Settings > Experimental > Custom Plugin Repositories`:

```
https://raw.githubusercontent.com/NNekoPlugins/NNekoTriggers/main/repo.json
```
