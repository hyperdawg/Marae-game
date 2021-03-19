#!/usr/bin/perl

# Marae game
# 2021 _hyperdawg

#################################################################################################
# DISCLAIMER: This information is accurate for the Te Ati Awa tribe of Wellington and Taranaki. #
#################################################################################################

use strict;
use warnings;

sub place() {
    print "\e[1;31mPLACEHOLDER_TEXT\e[m\n";
}

print "Welcome to The Marae Game!\n";
print "You are a visiting Tribe to this Tribe (Te Ati Awa)'s Marae (Meeting Place)\n";
print "Do you come in peace (1) or war (2)?\n";

my $peaceorwar = <STDIN>;
my $screwedup = 0;
my $mana = 1000;

if ($peaceorwar == 1) {
    print "You walk up to the door. Do you walk straight in (1) or wait to be invited (2)?\n";

    my $doorchoice = <STDIN>;

    if ($doorchoice == 1) {
        $screwedup = 1;
        print "The chief gets angry at you for not being invited, but he doesn't get too angry.\nThe chief hints that you might be kicked out of the Marae.\n";
    } elsif ($doorchoice == 2) {
        print "The tribe happily welcomes you to their marae.\n";
    } else {
        print "\e[1;31mInvalid Input\e[m\n";
        exit;
    }

    sleep (1);

    print "You walk inside. You heard a rumour from a neighbouring tribe that this tribe sits boys at the back of the Marae.\nDo you take chances and sit your boys at the front (1), mix up the boys and girls (2) or sit boys at the back (3)?\n";

    my $gfbfmu = <STDIN>;

    if ($gfbfmu == 1) {
        print "You find out that the rumours are true. The chief warns you that if you screw up 1 more time, he will kick you and your tribe out of the Marae.\n";
        $screwedup = 1;
    } elsif ($gfbfmu == 2) {
        print "You find out that the rumours are true. The chief warns you that if you screw up 1 more time, he will kick you and your tribe out of the Marae.\n";
        $screwedup = 1;
    } elsif ($gfbfmu == 3) {
        print "The tribe doesn't say you did anything wrong. You assume that the rumours are true.\n";
    } else {
        print "\e[1;31mInvalid Input\e[m\n";
        exit;
    }

    sleep (1);
    
    print "The tribe invites you to eat at their Marae. Do you tuck straight in (1) or wait for the Karakia Kai (food prayer) (2)?\n";
    
    my $foodprayer = <STDIN>;

    if ($foodprayer == 1) {
        if ($screwedup > 0) {
            print "The chief got angry at you and kicked you out of the Marae.\n";
            sleep (1);
            print "\e[1;31mGAME OVER!\e[m\n";
            exit;
        }
        
    } elsif ($foodprayer == 2) {
        print "You have a happy feast with the tribe. The chief forgets you were ever another tribe.\n";
    }
    
    sleep (1);

    print "\e[1;32mYOU WIN!\e[m\n";

} elsif ($peaceorwar == 2) {
    print "You realise that you are much better with a Taiaha than the other tribe. \nYou beat them down in 2 hits. This tribe is now yours!\n";
    sleep (2);
    print "Too bad the ghost of the tribe haunts you for the rest of your life!\nYou eventually step down from chief because the stress is too much.\n";
    sleep (2);
    print "\e[1;31mGAME OVER!\e[m\n";
    sleep (1);
    exit;
} else {
    print "\e[1;31mInvalid Input\e[m\n";
    exit;
}

# cheese