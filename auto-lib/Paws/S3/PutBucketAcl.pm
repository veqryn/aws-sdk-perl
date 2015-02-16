
package Paws::S3::PutBucketAcl {
  use Moose;
  has AccessControlPolicy => (is => 'ro', isa => 'Paws::S3::AccessControlPolicy');
  has ACL => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWrite => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketAcl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?acl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::

=head1 ATTRIBUTES

=head2 AccessControlPolicy => Paws::S3::AccessControlPolicy

  
=head2 ACL => Str

  

The canned ACL to apply to the bucket.









=head2 B<REQUIRED> Bucket => Str

  
=head2 ContentMD5 => Str

  
=head2 GrantFullControl => Str

  

Allows grantee the read, write, read ACP, and write ACP permissions on
the bucket.









=head2 GrantRead => Str

  

Allows grantee to list the objects in the bucket.









=head2 GrantReadACP => Str

  

Allows grantee to read the bucket ACL.









=head2 GrantWrite => Str

  

Allows grantee to create, overwrite, and delete any object in the
bucket.









=head2 GrantWriteACP => Str

  

Allows grantee to write the ACL for the applicable bucket.











=cut
