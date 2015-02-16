
package Paws::SimpleWorkflow::CountPendingActivityTasks {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingActivityTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::PendingTaskCount');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::CountPendingActivityTasks - Arguments for method CountPendingActivityTasks on Paws::SimpleWorkflow

=head1 DESCRIPTION

This class represents the parameters used for calling the method CountPendingActivityTasks on the 
Amazon Simple Workflow Service service. Use the attributes of this class
as arguments to method CountPendingActivityTasks.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CountPendingActivityTasks.

As an example:

  $service_obj->CountPendingActivityTasks(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> domain => Str

  

The name of the domain that contains the task list.










=head2 B<REQUIRED> taskList => Paws::SimpleWorkflow::TaskList

  

The name of the task list.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CountPendingActivityTasks in Paws::SimpleWorkflow

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
