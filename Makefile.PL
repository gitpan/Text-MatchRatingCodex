use ExtUtils::MakeMaker;
my %options = %{
{
  'TYPEMAPS' => [],
  'NAME' => 'Text::MatchRatingCodex',
  'INC' => '',
  'VERSION' => '0.01',
    ($] >= 5.005 ? (
      AUTHOR     => 'Stefan Gipper <stefanos@cpan.org>',
    ) : ()),
}
};
WriteMakefile(%options);

