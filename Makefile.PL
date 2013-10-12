
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "interface to PAUSE's packages file (02packages.details.txt)",
  "AUTHOR" => "Neil Bowers <neil\@bowers.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "PAUSE-Packages",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "PAUSE::Packages",
  "PREREQ_PM" => {
    "CPAN::DistnameInfo" => 0,
    "Carp" => 0,
    "File::HomeDir" => 0,
    "File::Spec::Functions" => 0,
    "HTTP::Date" => 0,
    "HTTP::Tiny" => 0,
    "JSON" => 0,
    "Moo" => 0,
    "PAUSE::Packages::EntryIterator" => 0,
    "autodie" => 0,
    "feature" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => "0.88",
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.04",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



