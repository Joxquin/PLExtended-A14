package c3;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4274a;

    static {
        Throwable th;
        Class<?> cls;
        a aVar = null;
        try {
            cls = Class.forName("io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl");
            th = null;
        } catch (Throwable th2) {
            th = th2;
            cls = null;
        }
        d dVar = a.f4272a;
        if (cls != null) {
            try {
                aVar = (a) cls.asSubclass(a.class).getConstructor(d.class).newInstance(dVar);
            } catch (Throwable th3) {
                th = th3;
            }
        }
        if (aVar != null) {
            f4274a = aVar;
        } else {
            f4274a = new a();
        }
        if (th != null) {
            try {
                if (Boolean.getBoolean("io.perfmark.PerfMark.debug")) {
                    Logger.getLogger(c.class.getName()).log(Level.FINE, "Error during PerfMark.<clinit>", th);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void a() {
        f4274a.getClass();
    }

    public static void b() {
        f4274a.getClass();
    }
}
