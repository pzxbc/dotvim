vim��������
	ctags
	ack(version > 2.0)

��װ
Windows
	1. ��װctags
		����binĿ¼��������
	2. ��װack
		2.1 ��װcinst
			@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
		2.2 �ر�cmd.exe��ʹcinst������Ч����װack
			cinst ack

Linux/Mac(PackageΪ��ӦOS�İ�������)
	1.��װAck
		Homebrew on Mac
			Formula "ack"
		Debian
			Package "ack-grep"
			(To rename the "ack-grep" program to its proper name "ack", see the section below on renaming ack-grep)
		Ubuntu
			Package "ack-grep"
		Fedora
			Package "ack"
			
		��Debianϵͳ��������ack-grep
			On Debian-derived distros, ack is packaged as "ack-grep" because "ack" already existed. If you simply install via:

				$ sudo apt-get install ack-grep
			your ack will be called "ack-grep", which is 167% more characters to type per invocation. This is tragic for your poor fingers.

			To create a local diversion, renaming ack-grep to ack, first install the ack-grep package as shown above. Then, run:

				$ sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
	2.��װctags
		package ctags