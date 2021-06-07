all: clean

	yaml2ical -y conferences 	-o conferences.ics
	yaml2ical -y events 		-o events.ics
	yaml2ical -y meetups 		-o meetups.ics
	yaml2ical -y people 		-o people.ics
	yaml2ical -y social 		-o social.ics

	cat *.ics > feed.ics

clean:
	rm -f *.ics
