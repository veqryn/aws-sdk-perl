
package Paws::CloudFormation::DescribeStackInstance;
  use Moose;
  has StackInstanceAccount => (is => 'ro', isa => 'Str', required => 1);
  has StackInstanceRegion => (is => 'ro', isa => 'Str', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeStackInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackInstance - Arguments for method DescribeStackInstance on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStackInstance on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method DescribeStackInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStackInstance.

As an example:

  $service_obj->DescribeStackInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackInstanceAccount => Str

The ID of an AWS account that's associated with this stack instance.



=head2 B<REQUIRED> StackInstanceRegion => Str

The name of a region that's associated with this stack instance.



=head2 B<REQUIRED> StackSetName => Str

The name or the unique stack ID of the stack set that you want to get
stack instance information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStackInstance in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

