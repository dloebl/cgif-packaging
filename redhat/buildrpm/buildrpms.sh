#!/bin/sh
git clone https://github.com/lovell/cgif-packaging.git # TBD clone actual branch (e.g. from PR)
cp cgif-packaging/redhat/libcgif.spec /root/.
spectool -g -R /root/libcgif.spec                      # download SOURCE0
rpmbuild -ba /root/libcgif.spec                        # build all RPMs (source RPM, binary RPM etc. ..)
# mock --rebuild /root/rpmbuild/SRPMS/*.rpm            # DBL: would build the libcgif RPMS a second time with mock - unfortunately it does not work in this docker image :-(
                                                       # error: <insert error message>
