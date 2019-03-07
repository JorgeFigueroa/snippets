wmic process get processid,parentprocessid,executablepath | find "nameProcess"   #Find a Windows process based on its description, using CMD
tasklist /v | find "nameProcess"    #Find a Windows process based on its description, using CMD

taskkill /F /PID  processId     #Kill process
