require 'hexp'
require 'kramdown'

module Hexp
  module Kramdown
    def convert(document_or_element)
      Hexp::Kramdown::Converter.new.convert(
        if document_or_element.is_a? Kramdown::Document
          document_or_element.root
        else
          document_or_element
        end
      ).to_hexp
    end
  end
end
