module Spree::AuthorsHelper
  def add_author_links(author_string)
    return "" if author_string.blank?

    # TODO there must be a way to replace multiple strings with a single replacement
    # TODO this is some app-specific substitutions here
    author_string
      .strip
      .sub('and more', '')
      .sub(/^[bB]y\s/, '')                # remove the 'by' from 'by Author Name'
      .sub(/[Vv]arious [Ss]peakers/, '')  
      .sub(/\s(?:&|&amp;|and)\s/, ',')    # convert all list words/symbols to a 'and'
      .split(',')
      .map(&:strip)
      .reject(&:blank?)
      .each do |author_name|
        author_match = Spree::Author.find_by_name(author_name)

        if author_match
          author_string.sub!(author_name, link_to(author_name, author_path(author_match)))
        end
      end

      author_string
  end
end
