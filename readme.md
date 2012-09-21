# ErrorMessagesForHelper #

Rails 3.2.x error_messages_for_helper plugin.


### Example ###

```ruby
<%= form_for :test, :url => {:action => 'create'}, :html => {:method => :post} do |f| %>
<%= error_messages_for :test %>
  <%= f.text_field :name %>
  <%= f.text_field :age %>
<% end %>
```

When @test.errors is not empty error_messages_for will output:

```html
<div class="error_explanation">
  <h2>Unable to save data.</h2>
  <p>Errors list:</p>
  <ul>
    <li>Can't be empty</li>
    <li>Must be integer</li>
  <li>
</div>
```

### Customize ###

For custom messages in your locale put this section:

```ruby
error_messages_for:
  header_message: 'Unable to save data.'
  error_list: 'Errors list:'
```

You can set global CSS class by html_options:

```ruby
ErrorMessagesForHelper.html_options(:class => 'alert alert-error')
```

output:

```html
<div class="alert alert-error">
  <h2>Unable to save data.</h2>
  <p>Errors list:</p>
  <ul>
    <li>Can't be empty</li>
    <li>Must be integer</li>
  <li>
</div>
```

Copyright (c) 2012 [Damian Baćkowski], released under the MIT license
