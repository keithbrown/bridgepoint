---

This work is licensed under the Creative Commons CC0 License

---

# Stop building some Windows edition
### xtUML Project Implementation Note


### 1. Abstract

This note describes the details of changes to the BridgePoint process to 
stop creating some Windows editions of BridgePoint.  

### 2. Document References

<a id="2.1"></a>2.1 [BridgePoint DEI #9745](https://support.onefact.net/issues/9745) Headline issue    

### 3. Background

Users no longer have an interest in 32-bit versions of BridgePoint for Windows.  We can 
increase the performance of the build process and reduce the amount of maintained packages
by stopping the process of creating these versions.  

Additionally, the build process creates a 64-bit developer version of BridgePoint during the 
build process.  This version is not supported and thus we don't publish the link.  We should stop
packaging this as well.  

### 4. Requirements

4.1 Stop creating Windows 32-bit developer and modeler versions.    
4.2 Stop creating Windows 64-bit developer version.   

### 5. Work Required

5.1 Item 1  

5.2 Item 2  

TODO - bridgepoint  
TODO - packaging  
TODO - buildmt  

### 6. Implementation Comments

TODO

### 7. Unit Test

7.1 Item 1  


### 8. User Documentation

Add a note in the next release notes that 32-bit Windows is no longer available.  

### 9. Code Changes

Fork/Repository: keithbrown/bridgepoint   
Branch: 9745_dump_win32   

<pre>
</pre>

Fork/Repository: keithbrown/packaging   
Branch: 9745_dump_win32   

<pre>
</pre>

Fork/Repository: keithbrown/buildmt  
Branch: 9745_dump_win32    

<pre>
</pre>

### End
