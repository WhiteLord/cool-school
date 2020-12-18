# Cool School

## What is this project?
In order to ensure safety and security to users **without** the installation of third-party software, administrators could use this script to automate
a safer environment creation.


## How do you define safety?
"To be safe" is a volatile state, in which one takes measures of precaution and hopes not to be interferred by outside malicious forces.

In the context of this application, **to be safe** means the following:

 - Creation of a user profile that has limited capabilities in terms of:
    - Installing additional software that creates system entries (or entries that are utilized in an OS-level)
    - Modifying system settings without administrator permission
    - Modifying storage device data
 - Limited capability in terms of resource access:
    - Blocking malicious websites
    - Disallowing NSFW resources
    
    

## What does the script do?
The script executes powershell commands to automate:

1. The creation of a local user
2. Setting a system-wide DNS entry to OpenDNS (more about this here: https://bit.ly/3ak345W)



## What is the difference between a local user and an administrator?
This is a Windows-101 quiestion that you can google yourself, but in short:
- Limited capability in terms of installing software
- Limited capability in terms of modifying system settings
- Limited capability in terms of changing disk device configuration and data



## How to install the application?
1. Download the repository or copy the contents of both files
2. **DO NOT USE OTHER FILE NAMES IF YOU DON'T KNOW WHAT YOU'RE DOING**
3. Place the files in a folder. It is of extreme importance that you **keep them together**
4. Run the **.bat** file as an administrator



## Why do I need to run the .bat file with elevated privileges?
Creating DNS entries and user profiles require elevated privileges.



## How can I contribute to the project?
Open Issues, create pull requests and don't be pushy about it, as my time is scarce.



## Project future
More functionalities could be introduced on demand. You can help the project by creating PRs and giving clear description what your code does.
