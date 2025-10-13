cd /tmp
git clone https://github.com/ruven/iipsrv.git
cd iipsrv
# Version 1.3 no longer builds in the current Docker image
git checkout iipsrv-1.2
# Deployed in /tmp/iipsrv/src/iipsrv.fcgi
./autogen.sh && ./configure && make
mv /tmp/iipsrv/src/iipsrv.fcgi /usr/local/bin/.
rm -rf /tmp/iipsrv
