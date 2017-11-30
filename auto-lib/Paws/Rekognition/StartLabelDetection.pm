
package Paws::Rekognition::StartLabelDetection;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has JobTag => (is => 'ro', isa => 'Str');
  has MinConfidence => (is => 'ro', isa => 'Num');
  has NotificationChannel => (is => 'ro', isa => 'Paws::Rekognition::NotificationChannel');
  has Video => (is => 'ro', isa => 'Paws::Rekognition::Video', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartLabelDetection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StartLabelDetectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartLabelDetection - Arguments for method StartLabelDetection on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartLabelDetection on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method StartLabelDetection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartLabelDetection.

As an example:

  $service_obj->StartLabelDetection(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotent token used to identify the start request. If you use the
same token with multiple C<StartLabelDetection> requests, the same
C<JobId> is returned. Use C<ClientRequestToken> to prevent the same job
from being accidently started more than once.



=head2 JobTag => Str

Unique identifier you specify to identify the job in the completion
status published to the Amazon Simple Notification Service topic.



=head2 MinConfidence => Num

Specifies the minimum confidence that Rekognition Video must have in
order to return a detected label. Confidence represents how certain
Amazon Rekognition is that a label is correctly identified.0 is the
lowest confidence. 100 is the highest confidence. Rekognition Video
doesn't return any labels with a confidence level lower than this
specified value.

If you don't specify C<MinConfidence>, the operation returns labels
with confidence values greater than or equal to 50 percent.



=head2 NotificationChannel => L<Paws::Rekognition::NotificationChannel>

The Amazon SNS topic ARN you want Rekognition Video to publish the
completion status of the label detection operation to.



=head2 B<REQUIRED> Video => L<Paws::Rekognition::Video>

The video in which you want to detect labels. The video must be stored
in an Amazon S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartLabelDetection in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
