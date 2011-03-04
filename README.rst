******************************
Update custom fields on commit
******************************

This plug-in allows you to specify a "close" value for IssueCustomFields. Thus,
whenever an issue is closed from a commit message, all custom fields for that
tracker are iterated; for fields which have a "close" value defined (defined as
anything other than ""), this value is then set as the custom field value for
the issue being closed.

Therefore, if you have issue #111 in your "Bug" tracker, and you have a "Bug
resolution" issue custom field with the possible values of "New", "Fixed",
"Won't fix", it's now possible to define both a default value ("New", say; this
value is used whenever a new Issue is created), as well as a "default close"
value (say, "Fixed"). Now, when you make a commit that includes "Resovle #111"
(or whatever keyword you've set-up for referencing issues from commit
messages), not only will the status of issue #111 be changed to "Closed", but
the value of "Bug resolution" will be set to fixed.

Installation
============

Install by::

    git clone git://github.com/jmcb/update-custom-fields-commit vendor/plugins/update-custom-fields-commit rake db:migrate:plugins
    RAILS_ENV=production

Then restart your Redmine installtion.

You should now be able to set "Default close" values in the "Edit Issue Custom
Field" view.

Info
====

Copyright (c) 2011 Jon McManus, released under the MIT license.

Forked from `projects-page-forward`_, which was:

Forked from `single-project-forward`_: Copyright (c) 2010 [James Kassemi],
released under the MIT license

 .. _`projects-page-forward`: https://github.com/jmcb/projects-page-forward
 .. _`single-project-forward`: https://github.com/jkassemi/single-project-forward
