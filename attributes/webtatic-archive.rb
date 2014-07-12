default['yum']['webtatic-archive']['repositoryid'] = 'webtatic-archive'

case node['platform']
when 'amazon'
  el_version = 6
else
  el_version = node['platform_version'].to_i
end

case el_version
when 5, 6
  default['yum']['webtatic-archive']['gpgkey'] = 'http://mirror.webtatic.com/yum/RPM-GPG-KEY-webtatic-andy'
when 7
  default['yum']['webtatic-archive']['gpgkey'] = 'http://mirror.webtatic.com/yum/RPM-GPG-KEY-webtatic-el7'
end

default['yum']['webtatic-archive']['description'] = "Webtatic Repository EL#{el_version} - $basearch - Archive"
default['yum']['webtatic-archive']['mirrorlist'] = "http://mirror.webtatic.com/yum/el#{el_version}-archive/$basearch/mirrorlist"

default['yum']['webtatic-archive']['failovermethod'] = nil
default['yum']['webtatic-archive']['gpgcheck'] = true
default['yum']['webtatic-archive']['enabled'] = false
default['yum']['webtatic-archive']['managed'] = false
