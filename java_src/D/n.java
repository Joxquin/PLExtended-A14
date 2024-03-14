package D;

import android.content.Context;
import android.graphics.Typeface;
import android.util.TypedValue;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal f278a = new ThreadLocal();

    /* renamed from: b  reason: collision with root package name */
    public static final WeakHashMap f279b = new WeakHashMap(0);

    /* renamed from: c  reason: collision with root package name */
    public static final Object f280c = new Object();

    public static Typeface a(int i4, Context context) {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i4, new TypedValue(), 0, null, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a7 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface b(android.content.Context r15, int r16, android.util.TypedValue r17, int r18, D.m r19, boolean r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: D.n.b(android.content.Context, int, android.util.TypedValue, int, D.m, boolean, boolean):android.graphics.Typeface");
    }
}
