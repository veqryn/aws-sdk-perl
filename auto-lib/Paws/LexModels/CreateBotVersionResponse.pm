
package Paws::LexModels::CreateBotVersionResponse;
  use Moose;
  has AbortStatement => (is => 'ro', isa => 'Paws::LexModels::Statement');
  has Checksum => (is => 'ro', isa => 'Str');
  has ChildDirected => (is => 'ro', isa => 'Bool');
  has ClarificationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int');
  has Intents => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Intent]');
  has LastUpdatedDate => (is => 'ro', isa => 'Str');
  has Locale => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
  has VoiceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::CreateBotVersionResponse

=head1 ATTRIBUTES


=head2 AbortStatement => L<Paws::LexModels::Statement>

The message that Amazon Lex uses to abort a conversation. For more
information, see .


=head2 Checksum => Str

Checksum identifying the version of the boat that was created.


=head2 ChildDirected => Bool

For each Amazon Lex bot created with the Amazon Lex Model Building
Service, you must specify whether your use of Amazon Lex is related to
a website, program, or other application that is directed or targeted,
in whole or in part, to children under age 13 and subject to the
Children's Online Privacy Protection Act (COPPA) by specifying C<true>
or C<false> in the C<childDirected> field. By specifying C<true> in the
C<childDirected> field, you confirm that your use of Amazon Lex B<is>
related to a website, program, or other application that is directed or
targeted, in whole or in part, to children under age 13 and subject to
COPPA. By specifying C<false> in the C<childDirected> field, you
confirm that your use of Amazon Lex B<is not> related to a website,
program, or other application that is directed or targeted, in whole or
in part, to children under age 13 and subject to COPPA. You may not
specify a default value for the C<childDirected> field that does not
accurately reflect whether your use of Amazon Lex is related to a
website, program, or other application that is directed or targeted, in
whole or in part, to children under age 13 and subject to COPPA.

If your use of Amazon Lex relates to a website, program, or other
application that is directed in whole or in part, to children under age
13, you must obtain any required verifiable parental consent under
COPPA. For information regarding the use of Amazon Lex in connection
with websites, programs, or other applications that are directed or
targeted, in whole or in part, to children under age 13, see the Amazon
Lex FAQ.


=head2 ClarificationPrompt => L<Paws::LexModels::Prompt>

The message that Amazon Lex uses when it doesn't understand the user's
request. For more information, see .


=head2 CreatedDate => Str

The date when the bot version was created.


=head2 Description => Str

A description of the bot.


=head2 FailureReason => Str

If C<status> is C<FAILED>, Amazon Lex provides the reason that it
failed to build the bot.


=head2 IdleSessionTTLInSeconds => Int

The maximum time in seconds that Amazon Lex retains the data gathered
in a conversation. For more information, see .


=head2 Intents => ArrayRef[L<Paws::LexModels::Intent>]

An array of C<Intent> objects. For more information, see .


=head2 LastUpdatedDate => Str

The date when the C<$LATEST> version of this bot was updated.


=head2 Locale => Str

Specifies the target locale for the bot.

Valid values are: C<"en-US">
=head2 Name => Str

The name of the bot.


=head2 Status => Str

When you send a request to create or update a bot, Amazon Lex sets the
C<status> response element to C<BUILDING>. After Amazon Lex builds the
bot, it sets C<status> to C<READY>. If Amazon Lex can't build the bot,
it sets C<status> to C<FAILED>. Amazon Lex returns the reason for the
failure in the C<failureReason> response element.

Valid values are: C<"BUILDING">, C<"READY">, C<"FAILED">, C<"NOT_BUILT">
=head2 Version => Str

The version of the bot.


=head2 VoiceId => Str

The Amazon Parrot voice ID that Amazon Lex uses for voice interactions
with the user.


=head2 _request_id => Str


=cut
