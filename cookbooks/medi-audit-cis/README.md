# medi-audit-cis

## Overview

This cookbook uses Chef's [audit-cis](https://supermarket.chef.io/cookbooks/audit-cis) cookbook in order to audit the infrastructure of servers running `ubuntu-14.04`.

To see the audit result type:

    kitchen converge

Output:

    Audit phase exception:
        Audit phase found failures - 90/215 controls > failed
    [2017-03-11T07:59:40+00:00] INFO: Chef Run > complete in 6.367837289 seconds

 This cookbook also implements tests using [InSpec](https://github.com/chef/inspec), which is an open-source testing framework for infrastructure with a human- and machine-readable language for specifying compliance, security and policy requirements.

 To see its tests results, change on `.kitchen.yml`:

     client_rb:
       audit_mode: :audit_only

And type:

    kitchen verify

Output:

    Test Summary: 125 successful, 0 failures, 0 skipped
        Finished verifying <default-ubuntu-1404> (0m6.55s).

This will apply remediations when necessary according to CIS Ubuntu Benchmark 14.04-100 standards, and then run the tests mentioned above, using Inspec.

More about [Inspec](https://github.com/chef/inspec).

## License and Maintainer

Maintainer:: Valter Henrique (valterhenrique85@gmail.com)

License:: All rights reserved
