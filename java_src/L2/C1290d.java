package l2;

import M.r;
import android.view.View;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;
/* renamed from: l2.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1290d implements r {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f11563a;

    public C1290d(SwipeDismissBehavior swipeDismissBehavior) {
        this.f11563a = swipeDismissBehavior;
    }

    @Override // M.r
    public final boolean a(View view) {
        SwipeDismissBehavior swipeDismissBehavior = this.f11563a;
        boolean z4 = false;
        if (swipeDismissBehavior.s(view)) {
            WeakHashMap weakHashMap = J.f3079a;
            boolean z5 = C0187y.c(view) == 1;
            int i4 = swipeDismissBehavior.f7742c;
            if ((i4 == 0 && z5) || (i4 == 1 && !z5)) {
                z4 = true;
            }
            int width = view.getWidth();
            if (z4) {
                width = -width;
            }
            view.offsetLeftAndRight(width);
            view.setAlpha(0.0f);
            return true;
        }
        return false;
    }
}
