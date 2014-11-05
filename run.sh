#!/bin/bash

echo Building Project
/bin/bash /var/settings/builder/pre_run.sh

echo Running pre build
/bin/bash /var/settings/builder/run.sh

echo Running build
/bin/bash /var/settings/builder/post_run.sh

echo Running post build
