# CI on AWS

## Presentation
[Slides from presentation](PRESENTATION.pdf)

## Installation

1. According to presentation prepare two AWS machines and decide which one will be master and which one will be slave.
1. Copy init-master.sh to master and run it as root.
1. Copy init-slave.sh to slave and run it as root.
1. Copy ssh public key from /var/lib/jenkins/.ssh/id_rsa.pub on master to /data/.ssh/authorized_keys on slave.
1. Install aws console on master for user jenkins
1. Copy test file MathTest.php to /data on slave
1. Setup Jenkins server according to Jenkins-setup-tutorial.pdf
