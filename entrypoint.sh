#!/bin/bash
# Start BarracudaVpn
barracudavpn --start --verbose --login $USERNAME --serverpwd $PASSWORD --config $CONFIG

# Connect to the drive
smbclient $SMBLOCATION -U $SMBUSER