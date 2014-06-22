安装脚本
安装cinst
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin



安装Ack
安装完cinst要关机cmd，重新打开，这样cinst的环境才会生效
cinst ack

