#
# Author:: Eugen Mayer <eugen.mayer@kontextwork.de>
# Cookbook Name:: shorewall_reloaded
# Recipe:: shorewall5
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# TODO: think on how to install shorewall5 the best way
# yet its using either testing or unstable under debian, but then we need to pin quiet a bit
# thus we need a dependency on apt

package "shorewall" do
  action :install
end

include_recipe 'config'