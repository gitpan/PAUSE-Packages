package PAUSE::Packages::Module;
{
  $PAUSE::Packages::Module::VERSION = '0.02';
}

use Moo;

has 'name'    => (is => 'ro');
has 'version' => (is => 'ro');

1;
