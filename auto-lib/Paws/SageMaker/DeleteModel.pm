
package Paws::SageMaker::DeleteModel;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteModel - Arguments for method DeleteModel on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteModel on the 
Amazon SageMaker Service service. Use the attributes of this class
as arguments to method DeleteModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteModel.

As an example:

  $service_obj->DeleteModel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

The name of the model to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteModel in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
