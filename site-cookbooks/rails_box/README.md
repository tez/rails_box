rails_box Cookbook
==================
This cookbook makes your rails application development environment.

Requirements
------------
TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
#### packages
- `toaster` - rails_box needs toaster to brown your bagel.

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### rails_box::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['rails_box']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### rails_box::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `rails_box` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[rails_box]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Clone the repository on Github
2. $ berks vendor cookbooks
3. $ vagrant up --provision
4. $ mv APPNAME project
5. $ cd project
8. $ bundle install --path .bundle --binstubs .bundle/bin
7. $ rails new . --skip-test-unit
9. $ rails new .

License and Authors
-------------------
Authors: TODO: List authors
