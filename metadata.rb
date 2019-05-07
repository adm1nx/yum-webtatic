name             'yum-webtatic'
maintainer       'Chris Nowicki'
maintainer_email 'chris.nowicki@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures yum-webtatic'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'
recipe           'default', 'Adds Webtatic repository metadata to yum'

depends 'yum-epel'

supports 'rhel', '>= 5.0'
supports 'centos', '>= 5.0'
