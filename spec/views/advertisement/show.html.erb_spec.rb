<h1> <%= @advertisement.title %> </h1>
<div class="media">
  <div class="media-body">
    <h4 class="media-heading">
      <%= @advertisement.copy %>
    </h4>
    <h4 class="media-heading">
      Price of Advertisement: $<%= @advertisement.price %>
    </h4>
    <div class="back-link">
    <h4> <%= link_to "Back", :back %> </h4>
    </div>
