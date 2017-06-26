WORDS =  {'ADJECTIVE' =>  ["apogeal", "liliaceous", "sanguineous", "deutoplasmic", "amphibolous", "recollective", "phenomenal", "uninflected", "avertable", "alimental", "saprophytic", "undutiful", "trochanteric", "mentholated", "pyrogenous", "obreptitious", "anticyclone", "elliptical", "pyorrhoeal", "juvenescent"],
          'VERB' =>       ["reformulate", "gormandisings", "diphthongises", "recommitting", "luxuriates", "peroxidized", "dialogize", "attenuates", "intoxicates", "humidifies", "eternising", "gesticulates", "interspacing", "supinating", "militarised", "phosphorylates", "naphthalising", "westernizing", "predestinates", "alkalising"], 
          'NOUN' =>       ["transmissiveness", "arytenoid", "himation", "miniatures", "pyracantha", "gaseity", "impunity", "crucifixes", "disgracefulness", "phraseographs", "dispossessions", "diachylons", "somatopleures", "attestation", "equalizers", "dehydrators", "leucorrhoea", "catatonics", "upholsteries", "admiration"], 
          'ADVERB' =>     ["endurably", "maritally", "bilingually", "personally", "whensoever", "reportedly", "sectionally", "sagaciously", "minimally", "sufferably", "congenially", "laterally", "hideously", "annoyingly", "connubial", "alternately", "dejectedly", "reservedly", "effortlessly", "proficiently"] 
         }


f = File.open('madlibs.txt', 'r')
struc_str = f.read

WORDS.each do |type, list|
  reg = /(<)#{type}(>)/
  struc_str.sub!(reg, list.sample ) while struc_str =~ reg
end
p struc_str