#!/bin/bash

sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
sudo apt update
sudo apt install libatlas3-base r-base r-base-dev

