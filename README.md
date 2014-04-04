zypper Cookbook
===============
Cookbook that provides a lwrp for zypper repositories and also a
recipe to install and configure the smt-client for SLES.

Requirements
------------
Tested with SLES 11sp3

Attributes
----------
#### zypper::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['zypper']['smt_host']</tt></td>
    <td>String</td>
    <td>uri of the SMT host</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

Usage
-----
#### zypper::default
Just include `zypper` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[zypper]"
  ]
}
```

#### zypper::smt_client
Just include `zypper::smt_client` in your node's `run_list`
and set the `smt_host` attribute to your smt server:

```json
{
  "name":"my_node",
  "normal": {
    "zypper": {
      "smt_host": "smt.example.com"
    }
  },
  "run_list": [
    "recipe[zypper]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
