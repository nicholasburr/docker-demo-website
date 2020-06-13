FROM		nginx	
MAINTAINER	Nicholas Burr <info@nicholasburr.com>
ADD		setup.sh /
RUN		/setup.sh
