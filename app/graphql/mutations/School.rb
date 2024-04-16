module Mutations
  class School < BaseMutation
    # # Schools
    # schools has noticeboard :: This should be a model

    # school has faculties :: :: This should be a Enum

    # school has library

    # school has clubs :: :: This should be a model
    # # Faculties
    # faculties have  four levels
    # # level
    # level have courses
    # courses
    # courses have topics

    # #  headteachers
    # Headteacher belong to a school
    # Headteacher have teachers

    # # Teachers
    # Teachers also belong to school

  end
end
# has_many :sent_payments, :class_name => 'Payment', :foreign_key => 'sender_id'
# has_many :received_payments, :class_name => 'Payment', :foreign_key => 'recipient_id'