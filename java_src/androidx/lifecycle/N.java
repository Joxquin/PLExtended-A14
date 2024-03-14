package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class N {

    /* renamed from: a  reason: collision with root package name */
    public final Map f3580a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final Set f3581b = new LinkedHashSet();

    /* renamed from: c  reason: collision with root package name */
    public volatile boolean f3582c = false;

    public static void a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
    }

    public void b() {
    }
}
