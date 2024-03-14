package k2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* renamed from: k2.r  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1220r extends C1222t {

    /* renamed from: c  reason: collision with root package name */
    public RunnableC1219q f11207c;

    /* renamed from: d  reason: collision with root package name */
    public OverScroller f11208d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f11209e;

    /* renamed from: f  reason: collision with root package name */
    public int f11210f;

    /* renamed from: g  reason: collision with root package name */
    public int f11211g;

    /* renamed from: h  reason: collision with root package name */
    public int f11212h;

    /* renamed from: i  reason: collision with root package name */
    public VelocityTracker f11213i;

    public AbstractC1220r() {
        this.f11210f = -1;
        this.f11212h = -1;
    }

    public final void A(CoordinatorLayout coordinatorLayout, View view, int i4) {
        z(coordinatorLayout, view, i4, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    @Override // z.c
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f11212h < 0) {
            this.f11212h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f11209e) {
            int i4 = this.f11210f;
            if (i4 == -1 || (findPointerIndex = motionEvent.findPointerIndex(i4)) == -1) {
                return false;
            }
            int y4 = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y4 - this.f11211g) > this.f11212h) {
                this.f11211g = y4;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f11210f = -1;
            int x4 = (int) motionEvent.getX();
            int y5 = (int) motionEvent.getY();
            boolean z4 = v(view) && coordinatorLayout.i(x4, view, y5);
            this.f11209e = z4;
            if (z4) {
                this.f11211g = y5;
                this.f11210f = motionEvent.getPointerId(0);
                if (this.f11213i == null) {
                    this.f11213i = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.f11208d;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f11208d.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f11213i;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00dc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // z.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(androidx.coordinatorlayout.widget.CoordinatorLayout r20, android.view.View r21, android.view.MotionEvent r22) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.AbstractC1220r.r(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public boolean v(View view) {
        return false;
    }

    public int w(View view) {
        return -view.getHeight();
    }

    public int x(View view) {
        return view.getHeight();
    }

    public void y(View view, CoordinatorLayout coordinatorLayout) {
    }

    public int z(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6) {
        int b4;
        int s4 = s();
        if (i5 == 0 || s4 < i5 || s4 > i6 || s4 == (b4 = H.a.b(i4, i5, i6))) {
            return 0;
        }
        C1223u c1223u = this.f11218a;
        if (c1223u != null) {
            c1223u.b(b4);
        } else {
            this.f11219b = b4;
        }
        return s4 - b4;
    }

    public AbstractC1220r(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11210f = -1;
        this.f11212h = -1;
    }
}
