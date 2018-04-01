# $Header: /var/cvsroot/SMPPSim2/startsmppsim.sh,v 1.6 2005/12/09 17:35:32 martin Exp $
#! /bin/bash

config_file="conf/smppsim.props" ;

if [ ! -z ${1+x} ]
then
	config_file="$1"
fi;

java -Djava.net.preferIPv4Stack=true -Djava.util.logging.config.file=conf/logging.properties -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:StartFlightRecording=duration=1200s,filename=myrecording_submit_replace_local_1.jfr -jar smppsim.jar $config_file
