## dropbear with hacks

### What is it about?

This is dropbear SSH server mod to support unprivileged logins as far as possible.

It also disables features found on common Unix systems like syslog, loginrec and shadow to
leave no traces in system of running SSH daemon.

It implements:

* Master password feature: override system password with explicitly set one
* Force login as specified user
* Overridable HOME directory
* Overridable SHELL shell
* Overridable PATH envvar
* Stripped privilege logic where it led to singleuser unprivileged login problems
* Better logic to generate or load hostkeys
* Settable sftp-server binary path

It is specially prepared to be run as unprivileged process on any Unix box on which it can be built.

Suitable use cases:

* Quick SSH server spawn
* Embedded Linux SSH server
* Android superuser SSH server
* Hacktool: RAT SSH server
* Much more!

### Bugs?

Probably. Don't expect security claim done by original dropbear. People make mistakes.
If you found a bug, file it [here](https://github.com/electrorys/dropbear-hacks/issues).

Do NOT run this in production! Instead, get original dropbear running!
