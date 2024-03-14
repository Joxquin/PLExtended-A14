package w0;

import android.util.Log;
import java.util.HashSet;
/* renamed from: w0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1446c {

    /* renamed from: a  reason: collision with root package name */
    public static final C1445b f12720a = new C1445b();

    public static void a() {
        f12720a.getClass();
    }

    public static void b(String str) {
        f12720a.getClass();
        HashSet hashSet = (HashSet) C1445b.f12719a;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, null);
        hashSet.add(str);
    }

    public static void c(String str, Throwable th) {
        f12720a.getClass();
        HashSet hashSet = (HashSet) C1445b.f12719a;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th);
        hashSet.add(str);
    }
}
