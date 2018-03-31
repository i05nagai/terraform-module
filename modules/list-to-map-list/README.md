## Overview
Make list of maps from common map and list of maps.
For instance, assuming that you create routing tables to same gateway.

Desired list is

```terraform
routes = [
    {
        cidr_block = "10.0.1.0/24"
        gateway_id = "${gateway_id}"
    },
    {
        cidr_block = "10.0.3.0/24"
        gateway_id = "${gateway_id}"
    },
    {
        cidr_block = "10.0.3.0/24"
        gateway_id = "${gateway_id}"
    }
]
```

Inputs

```terraform
cidr_blocks = [
    {
        cidr_block = "10.0.1.0/24"
    },
    {
        cidr_block = "10.0.3.0/24"
    },
    {
        cidr_block = "10.0.5.0/24"
    }
]
base_map = {
    gateway_id = "${gateway_id}"
}
```

## Example
See `examples/example.tf`.

```
$ cd examples
$ terraform init
$ terraform apply
Outputs:

values = [
    {
        cidr_block = 10.0.1.0/24,
        gateway_id = id
    },
    {
        cidr_block = 10.0.3.0/24,
        gateway_id = id
    },
    {
        cidr_block = 10.0.5.0/24,
        gateway_id = id
    }
]
```
