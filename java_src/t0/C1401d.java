package t0;

import com.airbnb.lottie.network.FileExtension;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.zip.ZipInputStream;
import k0.C1183H;
import k0.s;
import w0.C1446c;
/* renamed from: t0.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1401d {

    /* renamed from: a  reason: collision with root package name */
    public final C1400c f12344a;

    /* renamed from: b  reason: collision with root package name */
    public final C1399b f12345b;

    public C1401d(C1400c c1400c, C1399b c1399b) {
        this.f12344a = c1400c;
        this.f12345b = c1399b;
    }

    public final C1183H a(String str, InputStream inputStream, String str2, String str3) {
        FileExtension fileExtension;
        C1183H f4;
        if (str2 == null) {
            str2 = "application/json";
        }
        boolean contains = str2.contains("application/zip");
        C1400c c1400c = this.f12344a;
        if (contains || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            C1446c.a();
            fileExtension = FileExtension.f4370e;
            f4 = str3 == null ? s.f(new ZipInputStream(inputStream), null) : s.f(new ZipInputStream(new FileInputStream(c1400c.c(str, inputStream, fileExtension))), str);
        } else {
            C1446c.a();
            fileExtension = FileExtension.f4369d;
            f4 = str3 == null ? s.c(inputStream, null) : s.c(new FileInputStream(c1400c.c(str, inputStream, fileExtension).getAbsolutePath()), str);
        }
        if (str3 != null && f4.f11089a != null) {
            c1400c.getClass();
            File file = new File(c1400c.b(), C1400c.a(str, fileExtension, true));
            File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
            boolean renameTo = file.renameTo(file2);
            file2.toString();
            C1446c.a();
            if (!renameTo) {
                C1446c.b("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
            }
        }
        return f4;
    }
}
