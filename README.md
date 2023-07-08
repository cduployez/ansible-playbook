# ansible-playbook

## VcXsrv

* Install VcXsrv (https://sourceforge.net/projects/vcxsrv/)
* Add shortcut to shell:startup (https://medium.com/javarevisited/using-wsl-2-with-x-server-linux-on-windows-a372263533c3)
* Add to ~/.zhsrc:
```sh
      # https://gist.github.com/djfdyuruiry/3150b9e5f3dadba89ea323df49ea7ab1
      # X Server
      export $(dbus-launch) # not needed if you have systemd enabled
      export LIBGL_ALWAYS_INDIRECT=1
      export WSL_HOST=$(cat "/etc/resolv.conf" | grep nameserver | awk '{print $2}' )
      export DISPLAY="${WSL_HOST}:0"
```
