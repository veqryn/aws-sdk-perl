
package Paws::ServiceCatalog::CreateTagOption;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTagOption');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CreateTagOptionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateTagOption - Arguments for method CreateTagOption on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTagOption on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method CreateTagOption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTagOption.

As an example:

  $service_obj->CreateTagOption(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

The TagOption key.



=head2 B<REQUIRED> Value => Str

The TagOption value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTagOption in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

