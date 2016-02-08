# Parthenon
An app for managing servers.

The goal for this app is to make managing Minecraft servers reliably and easily come together
Planning on the ability to send commands to a server, check its status, make backups and spin up new servers easily.

Like the ability to have a Event server be spun up within minutes.

Heavily inspired by [Gamocosm](https://github.com/Gamocosm/Gamocosm).

There's a lot of moving parts to connect and seeing how Gamocosm handled it was a fascinating experience. Gave a ton of inspiration, but ultimately we determined that because we use our own infrastructure it wasn't suitable for our needs.


## Technical Roadmap

- Minecraft Server Wrapper
  - Need to be able to put server process into a daemon.
  - Still need to be able to interact with the process / start/stop/send commands/backup etc.
- CloudFlare API
  - Need to be able to spin up/manage servers DNS or SRV records.


## Manual steps to setup a server currently (pre-app)

1. Choose a type of Minecraft server to setup (Vanilla or Modded)
2. Pick an ip address on the box it's hosted on + pick an open port for the server to run on
3. Setup a short slugged(of the server name) SRV record for the server on CloudFlare that points to the IP/port
4. Download and unpack the server files on the box
5. Schedule the automatic backup script
6. Schedule to automatic restart
7. Make sure to setup the minecraft server.proprties file properly for the version, ip, port
8. Start the Server
9. When server is running check the process and ensure its running
