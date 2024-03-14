package Y2;

import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final int f2329a;

    /* renamed from: b  reason: collision with root package name */
    public static final Queue f2330b;

    static {
        int max = Math.max(16384, 8192);
        f2329a = max;
        f2330b = new LinkedBlockingQueue(131072 / max);
    }

    public static void a(byte[] bArr) {
        if (bArr.length == f2329a) {
            ((LinkedBlockingQueue) f2330b).offer(bArr);
        }
    }
}
