=begin
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
=end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_info|
    lang_info.each do |name, attributes|
      if new_hash.has_key?(name)
        new_hash[name][:style].push(style)
      else
        new_hash[name] = {:type => attributes[:type], :style => [style]}
      end
    end
  end
  new_hash
end