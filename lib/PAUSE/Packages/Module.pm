package PAUSE::Packages::Module;
{
  $PAUSE::Packages::Module::VERSION = '0.05';
}

use 5.10.0;
use Moo;

has 'name'    => (is => 'ro');
has 'version' => (is => 'ro');

1;
