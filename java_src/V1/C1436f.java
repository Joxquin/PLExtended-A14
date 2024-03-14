package v1;

import android.util.Log;
import androidx.dynamicanimation.animation.q;
import kotlin.jvm.internal.h;
/* renamed from: v1.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1436f extends q {

    /* renamed from: a  reason: collision with root package name */
    public static final C1436f f12638a = new C1436f();

    public C1436f() {
        super("UnfoldRemoteFilter");
    }

    @Override // androidx.dynamicanimation.animation.q
    public final float getValue(Object obj) {
        C1437g provider = (C1437g) obj;
        h.e(provider, "provider");
        return provider.f12643h;
    }

    @Override // androidx.dynamicanimation.animation.q
    public final void setValue(Object obj, float f4) {
        C1437g provider = (C1437g) obj;
        h.e(provider, "provider");
        if (provider.f12641f) {
            provider.f12639d.onTransitionProgress(f4);
        } else {
            Log.e("UnfoldRemoteFilter", "Filtered progress received received while animation not in progress.");
        }
        provider.f12643h = f4;
    }
}
