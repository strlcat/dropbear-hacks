## dropbear for hackers mod

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

### DISCLAIMER

The author of this mod (Andrey Rys) is NOT responsible for any misuse of This Software,
including but not limited to malicious actions performed by using This Software,
parts of or any derivatives of This Software, it's previous versions (including forks) or other
forms which bear exact or similar changes done by author of this repository, with intent to mod
it as described by commits done to this repository and/or to achieve result described in this
document, or any other documents, commits, commit logs and other associated data describing
original idea behind the changes.

The changes are committed in hope of their usefulness for general public, and are released
SOLELY FOR EDUCATIONAL AND DEMONSTRATION PURPOSES. The author does NOT consult on how this
copy of software shall be used or not, not done this and will never do in future.

The commits describing mod, derivative or fork bear same copyright as the Original Software,
thus, dropbear license, as described in LICENSE file in this repository. If special permission
for relicense is required, one can SAFELY assume the commits describing the modification ONLY
are placed into PUBLIC DOMAIN without any requirements of attribution.

ONLY END USER OF ANY FORM OF THIS SOFTWARE IS RESPONSIBLE FOR ANY ACTIONS DONE WITH HELP OF THIS
SOFTWARE, GOOD OR BAD, AND IF DAMAGE OR OTHER NEGATIVE RESULT AROSE DURING USE OF THIS SOFTWARE,
ONLY END USER BEARS FULL RESPONSIBILITY FOR ANY NEGATIVE RESULTS, ACTIONS OR OTHER INFLICTED
HARM, EVEN IF IT AROSE BECAUSE OF A ENGINEERING FLAW INSIDE USED COPY OF SOFTWARE.
THE AUTHOR OF THE MOD CLAIMS NO LIABILITY BECAUSE HE PROVIDED THIS SOFTWARE, ANY FORM OF IT
SOLELY FOR EDUCATIONAL AND DEMONSTRATIONAL PURPOSES WITH A GOOD HEART AND BRIGHT MIND.

BY USING THIS SOFTWARE YOU ACKNOWLEDGE YOU HAD READ ALL THE TERMS AND CONDITIONS ABOVE AND ACCEPTED THEM.
