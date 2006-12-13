#platform=x86, AMD64, or Intel EM64T
# System authorization information
auth  --useshadow  --enablemd5
# System bootloader configuration
bootloader --location=mbr
# Partition clearing information
clearpart --all --initlabel
# Use text mode install
text
# Firewall configuration
firewall --enabled
# Run the Setup Agent on first boot
firstboot --disable
# System keyboard
keyboard us
# System language
lang en_US
# Use network installation
url --url=TEMPLATE::tree
# If any cobbler repo definitions were referenced in the kickstart profile, include them here.
TEMPLATE::yum_repo_stanza
# Network information
network --bootproto=dhcp --device=eth0 --onboot=on
# Reboot after installation
reboot

#Root password
rootpw --iscrypted $1$mF86/UHC$WvcIcX2t6crBz2onWxyac.
# SELinux configuration
selinux --disabled
# Do not configure the X Window System
skipx
# System timezone
timezone  America/New_York
# Install OS instead of upgrade
install
# Clear the Master Boot Record
zerombr

%packages

%post
TEMPLATE::yum_config_stanza


