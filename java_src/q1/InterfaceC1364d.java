package q1;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.io.PrintWriter;
/* renamed from: q1.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC1364d extends Application.ActivityLifecycleCallbacks {
    default void dump(String str, PrintWriter printWriter) {
    }

    default void e() {
    }

    default void h() {
    }

    default void k(boolean z4) {
        n(z4 ? 200 : 0);
    }

    default void n(int i4) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityStopped(Activity activity) {
    }

    default void onAttachedToWindow() {
    }

    default void onDetachedFromWindow() {
    }

    default boolean startSearch(byte[] bArr, Bundle bundle) {
        return false;
    }
}
