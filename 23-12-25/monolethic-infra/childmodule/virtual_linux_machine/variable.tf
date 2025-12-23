variable "virtual_machine"{
    type=map(object({
        vm_name=string
        rg_name=string
        location=string
        username=string
        password=string
        nic_name=string
        vnet_name=string
        pip_name=string
        size = string         
        subnet_name=string
    
    }))
}
