bt=$(acpi | grep -oe '[0-9]\{1,2\}%')
dt=$(date +'%Y-%m-%d %X')
#lt=$(light)
#sd=$(amixer sget Master | grep -oe '[0-9][0-9]%' -m 1)
echo "${dt}   ${bt} "
