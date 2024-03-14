package androidx.recyclerview.widget;

import android.util.Log;
import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public final class y0 {

    /* renamed from: d  reason: collision with root package name */
    public int f4044d = -1;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4046f = false;

    /* renamed from: g  reason: collision with root package name */
    public int f4047g = 0;

    /* renamed from: a  reason: collision with root package name */
    public int f4041a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f4042b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f4043c = Integer.MIN_VALUE;

    /* renamed from: e  reason: collision with root package name */
    public Interpolator f4045e = null;

    public final void a(RecyclerView recyclerView) {
        int i4 = this.f4044d;
        if (i4 >= 0) {
            this.f4044d = -1;
            recyclerView.jumpToPositionForSmoothScroller(i4);
            this.f4046f = false;
        } else if (!this.f4046f) {
            this.f4047g = 0;
        } else {
            Interpolator interpolator = this.f4045e;
            if (interpolator != null && this.f4043c < 1) {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }
            int i5 = this.f4043c;
            if (i5 < 1) {
                throw new IllegalStateException("Scroll duration must be a positive number");
            }
            recyclerView.mViewFlinger.c(this.f4041a, this.f4042b, interpolator, i5);
            int i6 = this.f4047g + 1;
            this.f4047g = i6;
            if (i6 > 10) {
                Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
            }
            this.f4046f = false;
        }
    }
}
