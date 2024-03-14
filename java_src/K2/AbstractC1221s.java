package k2;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import androidx.core.view.c0;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.material.appbar.AppBarLayout;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: k2.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1221s extends C1222t {

    /* renamed from: c  reason: collision with root package name */
    public final Rect f11214c;

    /* renamed from: d  reason: collision with root package name */
    public final Rect f11215d;

    /* renamed from: e  reason: collision with root package name */
    public int f11216e;

    /* renamed from: f  reason: collision with root package name */
    public int f11217f;

    public AbstractC1221s() {
        this.f11214c = new Rect();
        this.f11215d = new Rect();
        this.f11216e = 0;
    }

    @Override // z.c
    public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6) {
        AppBarLayout v4;
        c0 c0Var;
        int i7 = view.getLayoutParams().height;
        if ((i7 == -1 || i7 == -2) && (v4 = v(coordinatorLayout.d(view))) != null) {
            int size = View.MeasureSpec.getSize(i6);
            if (size > 0) {
                WeakHashMap weakHashMap = J.f3079a;
                if (C0186x.a(v4) && (c0Var = coordinatorLayout.f3050p) != null) {
                    size += c0Var.a() + c0Var.d();
                }
            } else {
                size = coordinatorLayout.getHeight();
            }
            coordinatorLayout.r(view, i4, i5, View.MeasureSpec.makeMeasureSpec((x(v4) + size) - v4.getMeasuredHeight(), i7 == -1 ? QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE : Integer.MIN_VALUE));
            return true;
        }
        return false;
    }

    @Override // k2.C1222t
    public final void u(CoordinatorLayout coordinatorLayout, View view, int i4) {
        AppBarLayout v4 = v(coordinatorLayout.d(view));
        int i5 = 0;
        if (v4 == null) {
            coordinatorLayout.n(view, i4);
            this.f11216e = 0;
            return;
        }
        z.f fVar = (z.f) view.getLayoutParams();
        int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin;
        int bottom = v4.getBottom() + ((ViewGroup.MarginLayoutParams) fVar).topMargin;
        int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin;
        int height = coordinatorLayout.getHeight();
        Rect rect = this.f11214c;
        rect.set(paddingLeft, bottom, width, ((v4.getBottom() + height) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        c0 c0Var = coordinatorLayout.f3050p;
        if (c0Var != null) {
            WeakHashMap weakHashMap = J.f3079a;
            if (C0186x.a(coordinatorLayout) && !C0186x.a(view)) {
                rect.left = c0Var.b() + rect.left;
                rect.right -= c0Var.c();
            }
        }
        Rect rect2 = this.f11215d;
        int i6 = fVar.f12969c;
        if (i6 == 0) {
            i6 = 8388659;
        }
        Gravity.apply(i6, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i4);
        if (this.f11217f != 0) {
            float w4 = w(v4);
            int i7 = this.f11217f;
            i5 = H.a.b((int) (w4 * i7), 0, i7);
        }
        view.layout(rect2.left, rect2.top - i5, rect2.right, rect2.bottom - i5);
        this.f11216e = rect2.top - v4.getBottom();
    }

    public abstract AppBarLayout v(List list);

    public float w(View view) {
        return 1.0f;
    }

    public int x(View view) {
        return view.getMeasuredHeight();
    }

    public AbstractC1221s(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11214c = new Rect();
        this.f11215d = new Rect();
        this.f11216e = 0;
    }
}
