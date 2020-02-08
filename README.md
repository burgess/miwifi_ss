# miwifi_ss
xiaomi wifi add ss

1. Change rom to dev version.
[MiWifi ROM](http://www1.miwifi.com/miwifi_download.html)
2. Enable ssh and get root password.
[MiWifi SSH](https://d.miwifi.com/rom/ssh)
3. Download install.sh and pkg folder content.
4. Modify pkg/ss.json content,add your ss service info.
5. Transfer step3's files to miwifi's /tmp path with winscp tool.
[WinSCP](https://winscp.net)
6. Connect to miwifi with putty tool and run sh /tmp/install.sh.
[PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/)
7. Enjoy.