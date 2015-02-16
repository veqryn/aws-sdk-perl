
package Paws::EC2::BundleInstance {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Storage => (is => 'ro', isa => 'Paws::EC2::Storage', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BundleInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::BundleInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::BundleInstance - Arguments for method BundleInstance on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method BundleInstance on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method BundleInstance.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to BundleInstance.

As an example:

  $service_obj->BundleInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DryRun => Bool

  

=head2 B<REQUIRED> InstanceId => Str

  

The ID of the instance to bundle.

Type: String

Default: None

Required: Yes










=head2 B<REQUIRED> Storage => Paws::EC2::Storage

  

The bucket in which to store the AMI. You can specify a bucket that you
already own or a new bucket that Amazon EC2 creates on your behalf. If
you specify a bucket that belongs to someone else, Amazon EC2 returns
an error.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for BundleInstance in Paws::EC2

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
