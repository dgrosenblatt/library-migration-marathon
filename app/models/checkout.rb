class Checkout < ActiveRecord::Base
  belongs_to :reader
  belongs_to :book
end

# Weird:

# irb(main):021:0> @checkout = Checkout.first
# D, [2014-12-09T09:06:35.158217 #11022] DEBUG -- :   Checkout Load (0.4ms)  SELECT  "checkouts".* FROM "checkouts"   ORDER BY "checkouts"."id" ASC LIMIT 1
# => #<Checkout id: 1, book_id: 1, reader: "Steve", due_on: "2014-12-09 13:29:36", returned_on: nil, created_at: "2014-12-09 13:29:36", updated_at: "2014-12-09 13:29:36", reader_id: nil>
# irb(main):022:0> @checkout.reader
# => nil
