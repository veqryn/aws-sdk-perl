package Paws::Pinpoint::SegmentBehaviors;
  use Moose;
  has Recency => (is => 'ro', isa => 'Paws::Pinpoint::RecencyDimension');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentBehaviors

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentBehaviors object:

  $service_obj->Method(Att1 => { Recency => $value, ..., Recency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentBehaviors object:

  $result = $service_obj->Method(...);
  $result->Att1->Recency

=head1 DESCRIPTION

Segment behavior dimensions

=head1 ATTRIBUTES


=head2 Recency => L<Paws::Pinpoint::RecencyDimension>

  The recency of use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

