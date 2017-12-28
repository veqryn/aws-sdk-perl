
package Paws::ServiceDiscovery::ListServices;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::ServiceFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::ListServicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListServices - Arguments for method ListServices on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServices on the 
Amazon Route 53 Auto Naming service. Use the attributes of this class
as arguments to method ListServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServices.

As an example:

  $service_obj->ListServices(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ServiceDiscovery::ServiceFilter>]

A complex type that contains specifications for the namespaces that you
want to list services for.

If you specify more than one filter, an operation must match all
filters to be returned by C<ListServices>.



=head2 MaxResults => Int

The maximum number of services that you want Amazon Route 53 to return
in the response to a C<ListServices> request. If you don't specify a
value for C<MaxResults>, Amazon Route 53 returns up to 100 services.



=head2 NextToken => Str

For the first C<ListServices> request, omit this value.

If more than C<MaxResults> services match the specified criteria, you
can submit another C<ListServices> request to get the next group of
results. Specify the value of C<NextToken> from the previous response
in the next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServices in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
