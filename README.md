zaproxy Cookbook
================
Cookbook for installing the OWASP Zed Attack Proxy (ZAP)


Requirements
------------
Should work on common Unix/Linux systems with typical userland utilities like tar, gzip, etc.

#### packages
- `ark` - zaproxy needs ark to install zaproxy from binary distribution for linux systems.

Attributes
----------
Customize the attributes to suit site specific conventions and defaults.

e.g.
#### zaproxy::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['zaproxy']['binary']['url']</tt></td>
    <td>String</td>
    <td>zaproxy binary distribution url</td>
    <td><tt>http://softlayer-sng.dl.sourceforge.net/project/zaproxy/2.3.1/ZAP_2.3.1_Linux.tar.gz</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['install_dir']</tt></td>
    <td>String</td>
    <td>zaproxy installation directory</td>
    <td><tt>/opt/zaproxy-2.3.1</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['host']</tt></td>
    <td>String</td>
    <td>zaproxy host</td>
    <td><tt>localhost</tt></td>
  </tr>
  <tr>
    <td><tt>['zaproxy']['port']</tt></td>
    <td>String</td>
    <td>Zaproxy port</td>
    <td><tt>8282</tt></td>
  </tr>
</table>

Usage
-----
#### zaproxy::default

Just include `zaproxy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[zaproxy]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author: Ruwan Nawarathne (<prnawa@gmail.com>) 

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
