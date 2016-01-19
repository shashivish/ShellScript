# ShellScript
Shell script required for job...


Kerberos Installation:

1. Run Install_Kerberos.sh
2.Create a use on linux and assign an hdfs directory ot it.
3.Download a file from ambari which contains info about principls of hadoop cluster.
4.Run Create_Pricinple.sh and pass pdownloaded pricinple file location.
5.Now apply changes from ambari.
6.Creating keytab file for user
kadmin.local
addprinc -randkey shashi@EXAMPLE.COM
xst -norandkey -k /etc/security/keytabs/shashi.headless.keytab shashi@EXAMPLE.COM
7. Assign appropriate permission to keytab file
8. Perform Kinit with keytab file
9. kinit -kt /etc/security/keytabs/shashi.headless.keytab shashi@EXAMPLE.COM
10.Its done ....!!! 
