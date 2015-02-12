vim辅助工具
	ctags
	ack(version > 2.0)

安装
Windows
	1. 安装ctags
		设置bin目录环境变量
	2. 安装ack
		2.1 安装cinst
			@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
		2.2 关闭cmd.exe，使cinst环境生效，安装ack
			cinst ack

Linux/Mac(Package为对应OS的包管理器)
	1.安装Ack
		Homebrew on Mac
			Formula "ack"
		Debian
			Package "ack-grep"
			(To rename the "ack-grep" program to its proper name "ack", see the section below on renaming ack-grep)
		Ubuntu
			Package "ack-grep"
		Fedora
			Package "ack"
			
		类Debian系统上重命名ack-grep
			On Debian-derived distros, ack is packaged as "ack-grep" because "ack" already existed. If you simply install via:

				$ sudo apt-get install ack-grep
			your ack will be called "ack-grep", which is 167% more characters to type per invocation. This is tragic for your poor fingers.

			To create a local diversion, renaming ack-grep to ack, first install the ack-grep package as shown above. Then, run:

				$ sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
	2.安装ctags
		package ctags