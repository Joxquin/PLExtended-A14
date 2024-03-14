package androidx.lifecycle;

import android.app.Activity;
/* loaded from: classes.dex */
public final class B {
    public static void a(Activity activity, Lifecycle$Event event) {
        kotlin.jvm.internal.h.e(activity, "activity");
        kotlin.jvm.internal.h.e(event, "event");
        if (activity instanceof InterfaceC0253t) {
            ((InterfaceC0253t) activity).getLifecycle().f(event);
        } else if (activity instanceof InterfaceC0251q) {
            AbstractC0247m lifecycle = ((InterfaceC0251q) activity).getLifecycle();
            if (lifecycle instanceof C0252s) {
                ((C0252s) lifecycle).f(event);
            }
        }
    }
}
