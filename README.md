# self-shred

![example](./self-shred.gif "Example")

This bash script deletes itself using [Unix Shred](https://en.wikipedia.org/wiki/Shred_(Unix)) after successfully running.  
Add the code in `self-shred.bash` to the end of your bash script to delete after execution.  
This can be used to reduce the chance of leaking sensitive information contained within.  

`self-shred.bash` will wait for 5 seconds before deleting itself by default.  
This can be changed by setting the `SHREDDING_GRACE_SECONDS` environment variable.  
You can stop the deletion by stopping the script with `Ctrl+C` before the fuze reaches the bomb.

If you just want to add self shredding to your bash scripts, you can do so by adding the following line:

```bash
shred -u "${0}"
```

where `${0}` is a magic variable automagically set to path to the script.

Idea from https://stackoverflow.com/a/3430367
