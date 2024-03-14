package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
/* loaded from: classes.dex */
public final class D0 extends Transition.EpicenterCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3247a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Rect f3248b;

    public /* synthetic */ D0(Rect rect, int i4) {
        this.f3247a = i4;
        this.f3248b = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public final Rect onGetEpicenter(Transition transition) {
        switch (this.f3247a) {
            case 0:
                return this.f3248b;
            default:
                Rect rect = this.f3248b;
                if (rect == null || rect.isEmpty()) {
                    return null;
                }
                return this.f3248b;
        }
    }
}
