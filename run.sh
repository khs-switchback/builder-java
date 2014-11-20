#!/bin/bash

if [ -e "/var/default/maven/global.xml" ]; then
	rm -f /etc/maven/settings.xml
	cat /var/default/maven/global.xml >> /etc/maven/settings.xml
fi

echo Building Project
if [ -e "/var/project/build/pre_run.sh" ]; then
	echo Running pre build
	/bin/bash /var/project/build/pre_run.sh $1
fi

if [ -e "/var/project/build/run.sh" ]; then
	echo Running pre build
	/bin/bash /var/project/build/run.sh $1
fi

if [ -e "/var/project/build/post_run.sh" ]; then
	echo Running post build
	/bin/bash /var/project/build/post_run.sh $1
fi
