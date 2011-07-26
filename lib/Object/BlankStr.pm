package Object::BlankStr;

use overload q{""} => sub { " \b" };

sub new { bless(\$_[0], $_[0]) }

1;
# ABSTRACT: True-valued 'blank' string object


__END__
=pod

=head1 NAME

Object::BlankStr - True-valued 'blank' string object

=head1 VERSION

version 0.02

=head1 SYNOPSIS

 use Object::BlankStr;

 die Object::BlankStr->new; # dies without printing anything

=head1 DESCRIPTION

Provides an object which stringifies to a 'blank' string (actually " \b", that
is, space followed by a backspace so when printed emulates nothing). Since this
is an object, it has a true value.

This is used for example when throwing exception with die(). You don't want to
print anything ("") but you need it to be a true value because otherwise Perl
will use "Died at ..." as the default error message.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

