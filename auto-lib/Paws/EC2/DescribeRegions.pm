
package Paws::EC2::DescribeRegions {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has RegionNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'RegionName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeRegionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeRegions - Arguments for method DescribeRegions on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegions on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeRegions.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegions.

As an example:

  $service_obj->DescribeRegions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DryRun => Bool

  

=head2 Filters => ArrayRef[Paws::EC2::Filter]

  

One or more filters.

=over

=item *

C<endpoint> - The endpoint of the region (for example,
C<ec2.us-east-1.amazonaws.com>).

=item *

C<region-name> - The name of the region (for example, C<us-east-1>).

=back










=head2 RegionNames => ArrayRef[Str]

  

The names of one or more regions.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DescribeRegions in Paws::EC2

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
