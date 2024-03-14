package k;

import android.content.Context;
import android.content.ContextWrapper;
/* loaded from: classes.dex */
public final class O0 extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f10808a = new Object();

    public static void a(Context context) {
        if ((context instanceof O0) || (context.getResources() instanceof Q0)) {
            return;
        }
        context.getResources();
        int i4 = b1.f10873a;
    }
}
