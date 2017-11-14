#!/usr/local/bin/perl
use strict; use warnings;

my $dir = $ARGV[0];

chdir($dir) or die "Error: can't chdir to $dir $!";

opendir my $dh, $dir or die "Error: couldn't open dir: $!\n";
foreach (readdir $dh) {
    next if /^\.+$/;
    if ((my $newname = $_) =~ s/zip1$/zip/) {

        print "OK: $_ -> $newname\n";
        rename($_, $newname) or die "Error: can't rename: $!";

        (my $dirname = $newname) =~ s/\.zip$//;
        system ('unzip', "$newname") == 0
            or die "Error: unzipping $newname to $dirname failed: $?";
        unlink $newname;
    }
}
closedir $dh;

