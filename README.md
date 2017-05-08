## __Payroll Todos__

This is a sample implementation of a simple HR/Payroll System for a small business, along with some JSON Todo CRUD endpoints. Written in Ruby with Rails 5 and a Postgres DB.

### __HR Associations__
This system includes `Employee`, `Position`, `Salary`, and `BankAccount` models. The associations are as follows:

* an `Employee` `belongs_to` a `position` and `has_one` `salary` through his/her position
* a `Position` `has_many` employees, and `belongs_to` a `salary`
* the company `BankAccount` has_many `salaries`
* a `Salary` `belongs_to` the `bank_account`, it `has_many` `positions`, and it  `has_many` `employees` through `positions`  

## __Todo Endpoints__
Todos can be created, updated, and destroyed at the following endpoints:

<table>
  <tr>
    <th>Verb</th>
    <th>URI Pattern</th>
    <th>Controller#Action</th>
  </tr>
  <tr>
    <td>GET</td>
    <td>/todos</td>
    <td>todos#index</td>
  </tr>
  <tr>
    <td>POST</td>
    <td>/todos</td>
    <td>todos#create</td>
  </tr>
  <tr>
    <td>PATCH</td>
    <td>/todos/:id</td>
    <td>todos#update</td>
  </tr>
  <tr>
    <td>DELETE</td>
    <td>/todos/:id</td>
    <td>todos#destroy</td>
  </tr>
</table>

### __Usage__
Feel free to fork this repo and play around with the endpoints. Remember to `bundle install` first. The root file is currently serving a list of all currently saved employees, their roles, and salaries. Associations have been made and instances can be created from the `rails console`. Tests are written with `rspec` and can be run with `bundle exec rspec spec`. Next steps include building out methods to `pay_salaries` and adding tests to the controllers.
