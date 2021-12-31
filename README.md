# README

- This is a Rails practice app initially followed by the instruction on this page https://edgeguides.rubyonrails.org/getting_started.html

- Commands used:

  ```
  rails new blog
  rails g controller Articles index
  rails g model Article title:string body:text
  rails db:migrate
  rails g model Comment commenter:string body:text article:references
  rails db:migrate
  rails g controller Comments
  rails g migration add_status_to_articles status:string
  rails g migration add_status_to_comments status:string
  ```

- Adding Simple CSS: https://simplecss.org/demo
