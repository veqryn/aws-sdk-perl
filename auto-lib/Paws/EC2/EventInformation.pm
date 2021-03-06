package Paws::EC2::EventInformation;
  use Moose;
  has EventDescription => (is => 'ro', isa => 'Str', request_name => 'eventDescription', traits => ['NameInRequest']);
  has EventSubType => (is => 'ro', isa => 'Str', request_name => 'eventSubType', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EventInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::EventInformation object:

  $service_obj->Method(Att1 => { EventDescription => $value, ..., InstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::EventInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->EventDescription

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EventDescription => Str

  The description of the event.


=head2 EventSubType => Str

  The event.

The following are the C<error> events.

=over

=item *

C<iamFleetRoleInvalid> - The Spot fleet did not have the required
permissions either to launch or terminate an instance.

=item *

C<launchSpecTemporarilyBlacklisted> - The configuration is not valid
and several attempts to launch instances have failed. For more
information, see the description of the event.

=item *

C<spotFleetRequestConfigurationInvalid> - The configuration is not
valid. For more information, see the description of the event.

=item *

C<spotInstanceCountLimitExceeded> - You've reached the limit on the
number of Spot instances that you can launch.

=back

The following are the C<fleetRequestChange> events.

=over

=item *

C<active> - The Spot fleet has been validated and Amazon EC2 is
attempting to maintain the target number of running Spot instances.

=item *

C<cancelled> - The Spot fleet is canceled and has no running Spot
instances. The Spot fleet will be deleted two days after its instances
were terminated.

=item *

C<cancelled_running> - The Spot fleet is canceled and will not launch
additional Spot instances, but its existing Spot instances continue to
run until they are interrupted or terminated.

=item *

C<cancelled_terminating> - The Spot fleet is canceled and its Spot
instances are terminating.

=item *

C<expired> - The Spot fleet request has expired. A subsequent event
indicates that the instances were terminated, if the request was
created with C<TerminateInstancesWithExpiration> set.

=item *

C<modify_in_progress> - A request to modify the Spot fleet request was
accepted and is in progress.

=item *

C<modify_successful> - The Spot fleet request was modified.

=item *

C<price_update> - The bid price for a launch configuration was adjusted
because it was too high. This change is permanent.

=item *

C<submitted> - The Spot fleet request is being evaluated and Amazon EC2
is preparing to launch the target number of Spot instances.

=back

The following are the C<instanceChange> events.

=over

=item *

C<launched> - A bid was fulfilled and a new instance was launched.

=item *

C<terminated> - An instance was terminated by the user.

=back



=head2 InstanceId => Str

  The ID of the instance. This information is available only for
C<instanceChange> events.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
