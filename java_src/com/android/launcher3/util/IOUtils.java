package com.android.launcher3.util;

import android.os.FileUtils;
import com.android.launcher3.Utilities;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public final class IOUtils {
    public static void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) {
        if (Utilities.ATLEAST_Q) {
            FileUtils.copy(inputStream, outputStream);
            return;
        }
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }
}
