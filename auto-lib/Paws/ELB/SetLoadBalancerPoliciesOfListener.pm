
package Paws::ELB::SetLoadBalancerPoliciesOfListener;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListener');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::SetLoadBalancerPoliciesOfListenerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListenerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::SetLoadBalancerPoliciesOfListener - Arguments for method SetLoadBalancerPoliciesOfListener on Paws::ELB

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetLoadBalancerPoliciesOfListener on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method SetLoadBalancerPoliciesOfListener.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetLoadBalancerPoliciesOfListener.

As an example:

  $service_obj->SetLoadBalancerPoliciesOfListener(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 B<REQUIRED> LoadBalancerPort => Int

The external port of the load balancer.



=head2 B<REQUIRED> PolicyNames => ArrayRef[Str|Undef]

The names of the policies. This list must include all policies to be
enabled. If you omit a policy that is currently enabled, it is
disabled. If the list is empty, all current policies are disabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetLoadBalancerPoliciesOfListener in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

