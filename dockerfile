FROM ubuntu:20.04

# Update the system
RUN apt-get update && \
    apt-get upgrade -y && \
# Install Barracuda
    apt-get install ./applications/./barracudavpn_5.1.4_amd64.deb && \
    apt-get install nano -y && \
# Install SMB
    DEBIAN_FRONTEND=noninteractive apt-get install tzdata -y && \
    apt-get install smbclient cifs-utils -y && \
# Install AFP
# 
# Start Barracuda
ENTRYPOINT ['/bin/bash', 'entrypoint.sh']