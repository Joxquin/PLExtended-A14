package v3;

import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.internal.F;
import kotlinx.coroutines.internal.G;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12673a;

    /* renamed from: b  reason: collision with root package name */
    public static final long f12674b;

    /* renamed from: c  reason: collision with root package name */
    public static final int f12675c;

    /* renamed from: d  reason: collision with root package name */
    public static final int f12676d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f12677e;

    /* renamed from: f  reason: collision with root package name */
    public static final f f12678f;

    /* renamed from: g  reason: collision with root package name */
    public static final k f12679g;

    /* renamed from: h  reason: collision with root package name */
    public static final k f12680h;

    static {
        String b4 = F.b("kotlinx.coroutines.scheduler.default.name");
        if (b4 == null) {
            b4 = "DefaultDispatcher";
        }
        f12673a = b4;
        f12674b = F.a("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 1L, Long.MAX_VALUE);
        int i4 = G.f11445a;
        if (i4 < 2) {
            i4 = 2;
        }
        f12675c = F.c("kotlinx.coroutines.scheduler.core.pool.size", i4, 1, 0, 8);
        f12676d = F.c("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4);
        f12677e = TimeUnit.SECONDS.toNanos(F.a("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f12678f = f.f12667a;
        f12679g = new k(0);
        f12680h = new k(1);
    }
}
