# The Network Module IAC

### Intro:
The main intention behind having this module is to enable users to create network in a matter of minutes

### Usage:
The Module usage is fairly simple! Let's look at the snippet below

```json
module "vpc" {
  source = "../../modules/vpc"

  project-id               = "odin-thirteen"
  is-network-created       = false
  regions                  = ["us-central1"]
  ip-cidrs                 = ["10.0.130.0/24"]
  source-tags              = []
  target-tags              = []
  enable-advanced-features = true
}
```

`module "vpc" {
  source = "../../modules/vpc"

  project-id               = "odin-thirteen"
  is-network-created       = false
  regions                  = ["us-central1"]
  ip-cidrs                 = ["10.0.130.0/24"]
  source-tags              = []
  target-tags              = []
  enable-advanced-features = true
}`