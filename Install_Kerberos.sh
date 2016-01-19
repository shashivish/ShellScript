yum -y install krb5-server krb5-libs krb5-auth-dialog krb5-workstation
ssh -o StrictHostKeyChecking=no -f root@node2 "yum -y install krb5-workstation"
ssh -o StrictHostKeyChecking=no -f root@node3 "yum -y install krb5-workstation"
ssh -o StrictHostKeyChecking=no -f root@node4 "yum -y install krb5-workstation"
ssh -o StrictHostKeyChecking=no -f root@node5 "yum -y install krb5-workstation"

cp /root/scripts/krb5.conf /etc
~/scripts/distFile.sh /root/scripts/krb5.conf /etc
kdb5_util create -s
/etc/rc.d/init.d/krb5kdc start
/etc/rc.d/init.d/kadmin start
