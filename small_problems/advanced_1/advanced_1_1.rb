NOUNS = %w(tree ant cheese beer pot garage bus airplane guitar computer skyscraper)
VERBS = %w(eats throws mocks scratches tickles compliments drinks finds forgets)
ADJECTIVES = %w(funny scary little huge angry mysterious tiny powerful incredible)
ADVERBS = %w(eagerly happily forgetfully worriedly carefully gingerly rapidly)

File.open('madlibs_revisited.txt') do |file|
  file.each do |line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:   ADVERBS.sample)
  end
end



