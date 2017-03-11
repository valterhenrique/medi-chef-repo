# # encoding: utf-8

# Inspec test for recipe medi-audit-cis::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

#
# Cookbook Name:: audit-cis
# Recipe:: ubuntu1404-100
#
# Author:: Joshua Timberman <joshua@chef.io>
# Copyright (c) 2015, Chef Software, Inc. <legal@chef.io>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# `node` is not available in the audit DSL, so let's set a local
# variable to check these attributes as flags
# level_two_enabled = AuditCIS.profile_level_two?(node)
# ipv6_disabled     = AuditCIS.ipv6_disabled?(node)
