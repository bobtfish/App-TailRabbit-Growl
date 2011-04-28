use strict;
use warnings;
use inc::Module::Install;

name 'App-TailRabbit-Growl';
all_from 'lib/App/TailRabbit/Growl.pm';

requires 'Mac::Growl';
requires 'App::TailRabbit';

test_requires 'Test::More' => '0.88';

install_script 'script/tail_rabbit_growl';

resources repository => 'git://github.com/bobtfish/App-TailRabbit-Growl.git';

if ($Module::Install::AUTHOR) {
    system("pod2text lib/App/TailRabbit/Growl.pm > README") and die $!;
}


WriteAll();

