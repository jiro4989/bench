=====
bench
=====

Benchmarking programming languages on GitHub Actions.

.. contents:: Table of contents

How to benchmark
================

You can do benchmarking on GitHub.
Starts benchmarking when you write a comment to `this issues <https://github.com/jiro4989/bench/issues/1>`_.
You just write `/bench`.

Adding other benchmarking cases
===============================

Benchmarking cases exist in `cases` directory.
You do below if you want to add new benchmarking cases.

* Create a `cases/case_XXX` directory
* Create a `cases/case_XXX/index.sh` script, and add exec permission

  * `index.sh` must writes `result.txt`

Detail, see other benchmarking cases.
