#!/mnt/asp/perl/bin/perl

# $Id: load_check

# check the load at given interval, send off an e-mail
# to monitoring CHM if it goes above cutoff.
# Sean Maguire, 7/30/2009
# In prep for VA2 switch work 8/1/2009

use warnings;
use strict;
use Mail::Send;

my $email_addy = 'brian.spadetti@blackboard.com';
my $load_threshhold = 9;
my $seconds_to_sleep = 60;
my $mail_sent = 0;
my $load_now;

my $usage = "usage: $0 <servername>";
die "$usage" unless $ARGV[0];

my $servername = join(" ", @ARGV);
print "monitoring $servername...\n";

while (1) {
        open LOADFILE, "<", "/proc/loadavg" or die $!;
        $load_now = (split / /, <LOADFILE>)[0];
        close(LOADFILE);
        if ( $load_now > $load_threshhold ) {
                my $output = "Load has hit $load_now on $servername!";
                if ( $mail_sent == 0 ) {
                        my $email = Mail::Send->new(Subject => $output,
To => $email_addy);
                        $email->add ('From',
'load_monitor.do.not.reply@blackboard.com' );
                        my $mailer = $email->open('smtp', Server =>
'asp-mail-va2-relay.blackboard.com');
                        print $mailer $output;
                        $mailer->close or warn "Couldn't send whole
message: $!\n";
                        $mail_sent = 1;
                } else {
                        print $output, "\n";
                }
        }
        sleep $seconds_to_sleep;
}