#!/bin/bash

echo Building Project
if [ e "/var/project/build/pre_run.sh" ]; then
	echo Running pre build
	/bin/bash /var/settings/build/pre_run.sh $1
fi

if [ e "/var/project/build/run.sh" ]; then
	echo Running pre build
	/bin/bash /var/settings/build/run.sh $1
fi

if [ e "/var/project/build/post_run.sh" ]; then
	echo Running post build
	/bin/bash /var/settings/build/post_run.sh $1
fi
