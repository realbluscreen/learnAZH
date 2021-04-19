Get-Disk |

Where partitionstyle -eq ‘raw’ |

Initialize-Disk -PartitionStyle MBR -PassThru |

New-Partition -AssignDriveLetter -UseMaximumSize |

Format-Volume -FileSystem NTFS  -Confirm:$false




 Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools

 Install-ADDSForest -DomainName "contoso.com" -InstallDns -DatabasePath "f:\NTDS" -SysvolPath "F:\SYSVOL" -LogPath "G:\LOGS"