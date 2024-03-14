package t0;

import com.airbnb.lottie.network.FileExtension;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import k0.C1188c;
/* renamed from: t0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1400c {

    /* renamed from: a  reason: collision with root package name */
    public final C1188c f12343a;

    public C1400c(C1188c c1188c) {
        this.f12343a = c1188c;
    }

    public static String a(String str, FileExtension fileExtension, boolean z4) {
        String str2;
        StringBuilder sb = new StringBuilder("lottie_cache_");
        sb.append(str.replaceAll("\\W+", ""));
        if (z4) {
            str2 = ".temp" + fileExtension.extension;
        } else {
            str2 = fileExtension.extension;
        }
        sb.append(str2);
        return sb.toString();
    }

    public final File b() {
        C1188c c1188c = this.f12343a;
        c1188c.getClass();
        File file = new File(c1188c.f11102a.getCacheDir(), "lottie_network_cache");
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public final File c(String str, InputStream inputStream, FileExtension fileExtension) {
        File file = new File(b(), a(str, fileExtension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return file;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } finally {
            inputStream.close();
        }
    }
}
