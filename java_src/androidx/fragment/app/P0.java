package androidx.fragment.app;

import android.view.View;
import j.C1080K;
/* loaded from: classes.dex */
public final class P0 {
    public static SpecialEffectsController$Operation$State a(View view) {
        boolean z4 = view.getAlpha() == 0.0f;
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.INVISIBLE;
        if (z4 && view.getVisibility() == 0) {
            return specialEffectsController$Operation$State;
        }
        int visibility = view.getVisibility();
        if (visibility != 0) {
            if (visibility != 4) {
                if (visibility == 8) {
                    return SpecialEffectsController$Operation$State.GONE;
                }
                throw new IllegalArgumentException(C1080K.a("Unknown visibility ", visibility));
            }
            return specialEffectsController$Operation$State;
        }
        return SpecialEffectsController$Operation$State.VISIBLE;
    }
}
