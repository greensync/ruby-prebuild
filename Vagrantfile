Vagrant.configure("2") do |config|

  config.vm.define "ruby-prebuild-debian8" do |subconfig|
    subconfig.vm.box = 'debian/jessie64'

    subconfig.vm.provider 'virtualbox' do |v|
      v.cpus = 4
      v.customize ["modifyvm", :id, "--memory", 3072]
    end

    subconfig.vm.synced_folder ".", "/vagrant", disabled: true
    subconfig.vm.provision :shell, path: 'scripts/provision.sh'
  end

end