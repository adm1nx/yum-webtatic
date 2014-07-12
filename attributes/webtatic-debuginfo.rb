default['yum']['webtatic-debuginfo']['repositoryid'] = 'webtatic-debuginfo'

case node['platform']
when 'amazon'
  el_version = 6
else
  el_version = node['platform_version'].to_i
end

case el_version
when 5, 6
  default['yum']['webtatic-debuginfo']['gpgkey'] = 'http://mirror.webtatic.com/yum/RPM-GPG-KEY-webtatic-andy'
when 7
  default['yum']['webtatic-debuginfo']['gpgkey'] = 'http://mirror.webtatic.com/yum/RPM-GPG-KEY-webtatic-el7'
end

default['yum']['webtatic-debuginfo']['description'] = "Webtatic Repository EL#{el_version} - $basearch - Debug"
default['yum']['webtatic-debuginfo']['mirrorlist'] = "http://mirror.webtatic.com/yum/el#{el_version}/$basearch/debug/mirrorlist"

default['yum']['webtatic-debuginfo']['failovermethod'] = nil
default['yum']['webtatic-debuginfo']['gpgcheck'] = true
default['yum']['webtatic-debuginfo']['enabled'] = false
default['yum']['webtatic-debuginfo']['managed'] = false