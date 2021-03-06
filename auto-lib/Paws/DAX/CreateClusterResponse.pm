
package Paws::DAX::CreateClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::DAX::Cluster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::CreateClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::DAX::Cluster>

A description of the DAX cluster that you have created.


=head2 _request_id => Str


=cut

1;