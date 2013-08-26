package PAUSE::Packages::Entry;
{
  $PAUSE::Packages::Entry::VERSION = '0.01';
}

use Moo;

has 'module'  => (is => 'ro');
has 'version' => (is => 'ro');
has 'release' => (is => 'ro');

1;
