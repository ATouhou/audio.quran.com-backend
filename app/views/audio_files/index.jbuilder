json.qari @qari
json.audio_files @files
  .group_by{|file| file.name}
  .map{|s| {
    surah: {
      name:s[0], 
      number:s[1].first.sura_number
    }, 
    files: Hash[s[1].group_by{|f| f.extension}.map{|k,v| [k,v.first]}]
    }
  }