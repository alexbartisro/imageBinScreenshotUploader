# imageBinScreenshotUploader for macOS
Automatically uploads screenshots to imageBin and sets the url to clipboard. This depends on Automator for running the script, but the scrupt itself should be platform agnostic. So if you want to run it any other way, on Linux for instance, you can.

### Installation
1. Go to your [imageBin Account](https://imagebin.ca/manage.php#) and get your *apiKey* (if you don't have one, get one)
2. Open **imageBinUploader.sh** and replace *thisShouldBeYouApiKey* with your *apiKey* (if you with copy it to your home folder)
3. Save
4. **chmod 775 imageBinUploader.sh** to make it executable
5. Test with a random image
    ```bash
    ./imageBinUploader.sh sampleImage.png
    ```
    The **URL** returned from imageBin is now be in your clipboard
6. Now, I've exported the *Folder Actions* Automator workflow and bundled it here with the script, so just double click it
7. When prompted select *Open with Automator* (edit the path of the script if you didn't move it to your home folder)
8.  
   a.After it opens just **Cmd+S** in the Automator window to be sure it saved correctly
   b. Or after it opens, open **Folder Actions Setup** from Spotlight to be sure it loaded corectly
9. Grab a screen shot with either **Cmd+Shift+3** or **Cmd+Shift+4** and wait a second for the upload to occur.
10. Enjoy!