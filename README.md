# README

there is an issue
when you try to create a new account with a new address using the `has_one` in the `Account` model it will save.

when you try to create a new account with a new address using the `belongs_to` in `Address` model it will not save with the following error:

```
#<ActiveModel::Errors [#<ActiveModel::Error attribute=addressable, type=blank, options={:message=>:required}>]>
```

just try to run the following commands with the belongs_to in the `Address` model:
```ruby
acc = Account.new
address = acc.build_main_location_address(line1: "adsf")
address.valid?
=> false
address.errors
=> #<ActiveModel::Errors [#<ActiveModel::Error attribute=addressable, type=blank, options={:message=>:required}>]>
```

when you try to run the same commands with the `has_one` in the `Account` model it will save.

```ruby
acc = Account.new
address = acc.build_main_location_address(line1: "adsf")
address.valid?
=> true
address.errors
=> #<ActiveModel::Errors []>
```