
package Paws::CognitoIdp::VerifySoftwareToken;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str');
  has FriendlyDeviceName => (is => 'ro', isa => 'Str');
  has Session => (is => 'ro', isa => 'Str');
  has UserCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifySoftwareToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::VerifySoftwareTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::VerifySoftwareToken - Arguments for method VerifySoftwareToken on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VerifySoftwareToken on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method VerifySoftwareToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VerifySoftwareToken.

As an example:

  $service_obj->VerifySoftwareToken(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AccessToken => Str

The access token.



=head2 FriendlyDeviceName => Str

The friendly device name.



=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service.



=head2 B<REQUIRED> UserCode => Str

The one time password computed using the secret code returned by




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VerifySoftwareToken in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

