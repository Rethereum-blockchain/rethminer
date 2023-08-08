# Rethminer v0.0.2

**Rethminer** is a fork of [Ethminer](https://github.com/ethereum-mining/ethminer) modified for [Rethereum](https://github.com/Rethereum-blockchain) with the ETHashB3 algorithm which depends on the [Blake3](https://github.com/BLAKE3-team/BLAKE3) C code. It is currently in the POC phase, has only been ported for CUDA gpus and has only been tested under linux and windows using wsl (ubuntu). It comes with no guarantee or warranty (use at your own risk!).

## Features
* NVIDIA CUDA mining v11.7.1
* Remote API has been disabled

## Usage

The **rethminer** can be compiled using docker using our make file found in the repository. To build it for linux please run:

```sh
docker build --no-cache -t ethb3miner-cuda .
```

### More information

For more information about building or command line usage and other options please checkout the [Ethminer](https://github.com/ethereum-mining/ethminer) project.

## Credits

| Name                  | Contact                                                      |     |
| --------------------- | ------------------------------------------------------------ | --- |
| ETHMiner Team    | [Ethminer](https://github.com/ethereum-mining/ethminer)     |  |
| Blake3 Team                   | [Blake3](https://github.com/BLAKE3-team/BLAKE3)                               |     |
| Gellin                | [@Gellin](https://github.com/gellin)                         |  RTH - 0xF5d15ae0c0E0e2da707266FdFcC5772a0583A417   |
| k1                | [@k1](https://github.com/korbin)                         |    |
| AllFather |  |    |

## Contribute

To meet the community, ask general questions and chat about ethminer join us on [discord](https://discord.com/invite/xCB4AJDEFb).

All bug reports, pull requests and code reviews are very much welcome.

## License

Licensed under the [GNU General Public License, Version 3](LICENSE).
