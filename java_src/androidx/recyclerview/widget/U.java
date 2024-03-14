package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
/* loaded from: classes.dex */
public final class U extends O {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ V f3904a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U(V v4, Context context) {
        super(context);
        this.f3904a = v4;
    }

    @Override // androidx.recyclerview.widget.O
    public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.O
    public final int calculateTimeForScrolling(int i4) {
        return Math.min(100, super.calculateTimeForScrolling(i4));
    }

    @Override // androidx.recyclerview.widget.O
    public final void onTargetFound(View view, y0 y0Var) {
        V v4 = this.f3904a;
        int[] a4 = v4.a(v4.f3909a.getLayoutManager(), view);
        int i4 = a4[0];
        int i5 = a4[1];
        int ceil = (int) Math.ceil(calculateTimeForScrolling(Math.max(Math.abs(i4), Math.abs(i5))) / 0.3356d);
        if (ceil > 0) {
            DecelerateInterpolator decelerateInterpolator = this.mDecelerateInterpolator;
            y0Var.f4041a = i4;
            y0Var.f4042b = i5;
            y0Var.f4043c = ceil;
            y0Var.f4045e = decelerateInterpolator;
            y0Var.f4046f = true;
        }
    }
}
