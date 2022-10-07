# frozen_string_literal: true

module Family
  class FamilyLine < ActiveRecord::Base
    has_paper_trail
    belongs_to :parent,
      class_name: "::Family::Family",
      foreign_key: :parent_id,
      optional: true
    belongs_to :grandson,
      class_name: "::Family::Family",
      foreign_key: :grandson_id,
      optional: true
  end
end
