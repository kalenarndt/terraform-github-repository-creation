# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_version = ">= 1.4.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">=5.25.0"
    }
  }
}


