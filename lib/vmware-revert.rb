require "vmware-revert/version"
require 'rbvmomi'

module VMWareRevert
   def revert host, user, password, vmName
      vim = RbVmomi::VIM.connect({ :host => host, :user => user, :password => password, :insecure => true })
      root = vim.serviceInstance.content.rootFolder
      dc = root.childEntity[0]
      vm = dc.find_vm(vmName)
      vm.RevertToCurrentSnapshot_Task.wait_for_completion
      vm.PowerOnVM_Task.wait_for_completion
   end
end