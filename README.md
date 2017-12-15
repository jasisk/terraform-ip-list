# terraform-ip-list
[terraform](https://terraform.io) module to turn a text file of IPs into a list

Inputs:
`list_path` = string path to whitelist. Defaults to `${path.root}/list.txt`.

Outputs:
`ips` = list of network addresses from the supplied list.

Example `list.txt`:
```
# Comments must start with a hash mark
0.0.0.0/0 # inline comments are also fine

# Blank lines are fine, too, if you want to group that way.
1.2.3.4/32
```
