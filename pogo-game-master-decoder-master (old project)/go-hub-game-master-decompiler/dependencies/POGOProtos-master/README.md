<!-- define variables -->
[1.1]: http://i.imgur.com/M4fJ65n.png (ATTENTION)

POGOProtos [![Build Status](https://travis-ci.org/pokemongo-dev-contrib/POGOProtos.svg?branch=master)](https://travis-ci.org/pokemongo-dev-contrib/POGOProtos)
===================

![alt text][1.1] <strong><em>`The contents of this repo are a proof of concept and are for educational use only`</em></strong>![alt text][1.1]<br/>

This repository contains the [ProtoBuf](https://github.com/google/protobuf) `.proto` files needed to decode the PokémonGo RPC.

### Implemented messages types
 - [``Global``](https://github.com/pokemongo-dev-contrib/POGOProtos/blob/master/src/POGOProtos/Networking/Requests/RequestType.proto)
 - [``Social``](https://github.com/pokemongo-dev-contrib/POGOProtos/blob/master/src/POGOProtos/Enums/SocialAction.proto)
 - [``Platform``](https://github.com/pokemongo-dev-contrib/POGOProtos/blob/master/src/POGOProtos/Networking/Platform/PlatformRequestType.proto) 
   
### Versioning

We are following [semantic versioning](http://semver.org/) for POGOProtos.  Every version will be mapped to their current PokémonGo version.

| Version      | API           | Notes           | Extra                          |
|--------------|---------------|-----------------|--------------------------------|
| 2.44.0       | 0.145.0       | Compatible      |  Protocol Buffers v3.8.0       |

### Usage

If you want to figure out the current version in an automated system, use this file.

[.current-version](https://raw.githubusercontent.com/pokemongo-dev-contrib/POGOProtos/master/.current-version)

*Note: This file will contain pre-release versions too.*

### Preparation

Current recommended protoc version: "Protocol Buffers v3.8.0".

You can find download links [here](https://github.com/google/protobuf/releases).

#### Windows
Be sure to add `protoc` to your environmental path.

#### *nix
Ensure that you have the newest version of `protoc` installed.

#### OS X
Use `homebrew` to install `protobuf ` with `brew install --devel protobuf`.

### Compilation
*NOTE: [compile_single.py](https://github.com/pokemongo-dev-contrib/POGOProtos/blob/master/compile_single.py) is outed!*

The compilation creates output specifically for the target language, i.e. respecting naming conventions, etc.  
This is an example of how the generated code will be organized:

```
python compile.py php:
 - POGOProtos/Data/PlayerData.proto -> POGOProtos/Data/PlayerData.php
```
```
python compile.py cpp:
 - POGOProtos/Data/PlayerData.proto -> POGOProtos/Data/PlayerData.pb.cpp
```
```
python compile.py csharp:
 - POGOProtos/Data/PlayerData.proto -> POGOProtos/Data/PlayerData.g.cs
 ```
 ```
 python compile.py objc:
  - POGOProtos/Data/PlayerData.proto -> POGOProtos/Data/PlayerData.pbobjc.m
 ```
 ```
 python compile.py python:
  - POGOProtos/Data/*.proto -> pogoprotos/data/__init__.py
  - POGOProtos/Data/PlayerData.proto -> pogoprotos/data/player_data_pb2.py
 ```
 ```
 python compile.py ruby:
  - POGOProtos/Data/*.proto -> pogoprotos/data.rb
  - POGOProtos/Data/PlayerData.proto -> pogoprotos/data/player_data.rb
 ```
 
![alt text][1.1] //TODO: help repo// ![alt text][1.1] 
  
 ```
python compile.py go:
 - POGOProtos/Data/*.proto -> github.com/aeonlucid/pogoprotos/data
 - POGOProtos/Data/PlayerData.proto -> github.com/aeonlucid/pogoprotos/data/player_data.pb.go
```
```
python compile.py java:
 - POGOProtos/Data/*.proto -> com/github/aeonlucid/pogoprotos/Data.java
 ```
 ```
python compile.py js:
 - POGOProtos/**/*.proto -> pogoprotos.js
``` 
```
python compile.py rust:
 - POGOProtos/Data/PlayerData.proto -> POGOProtos/Data/PlayerData.rs
```
```
python compile.py swift:
 - POGOProtos/Data/PlayerData.proto -> POGOProtos/Data/PlayerData.pb.swift
```

### Extra information

 - Run ```python compile.py --help``` for help.
 - You can find all available languages here [https://github.com/google/protobuf](https://github.com/google/protobuf).

### Libraries

If you don't want to compile POGOProtos but instead use it directly, check out the following repository.

| Language              | Source                                                         | Status                                                                                                                       |
|-----------------------|----------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| NodeJS                | https://github.com/pogosandbox/pogobuf                         |  OK                                                                                                                          |
| NodeJS (pure JS)      | https://github.com/pogosandbox/pogo-protos                     |  [![npm version](https://badge.fury.io/js/pogo-protos.svg)](https://badge.fury.io/js/pogo-protos)                            |
| Swift                 | https://github.com/123FLO321/POGOProtos-Swift                  |  OK                                                                                                                          |
| Python                | https://github.com/PotatoMapper/POGOProtosPython               |  OK                                                                                                                          |
| Java                  | https://github.com/pokemongo-dev-contrib/pogoprotos-java       |  OK                                                                                                                          |

| Additional resources  | Source                                                         | Status |
|-----------------------|----------------------------------------------------------------|--------|
| Gamemaster Json       | https://github.com/pokemongo-dev-contrib/pokemongo-game-master |  OK    |

### CREDITS

 - [AeonLucid](https://github.com/AeonLucid)
 - [pogosandbox (niicojs)](https://github.com/pogosandbox) 
 - [ZeChrales](https://github.com/ZeChrales)
 - [PokemoGo-Dev-Contrib](https://github.com/pokemongo-dev-contrib)