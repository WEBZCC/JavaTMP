package chapter9;

import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.CMSProcessable;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * CMSProcessable that handles File objects.
 */
public class CMSProcessableFile implements CMSProcessable {
    private static final int BUF_SIZE = 4096;
    private final File file;

    /**
     * Base constructor.
     *
     * @param file a File object representing the file we want processed.
     */
    public CMSProcessableFile(
            File file) {
        this.file = file;
    }

    /**
     * Write the contents of the file to the passed in OutputStream
     *
     * @param out the OutputStream passed in by the CMS API.
     */
    public void write(
            OutputStream out)
            throws IOException, CMSException {
        FileInputStream fIn = new FileInputStream(file);
        byte[] buf = new byte[BUF_SIZE];

        int count = 0;
        while ((count = fIn.read(buf)) > 0) {
            out.write(buf, 0, count);
        }

        fIn.close();
    }

    /**
     * Return the File object we were created with.
     */
    public Object getContent() {
        return file;
    }
}
