package k;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import com.android.systemui.shared.R;
import d.C0792a;
import j.C1097o;
/* renamed from: k.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1127b extends ViewGroup {

    /* renamed from: d  reason: collision with root package name */
    public final C1125a f10856d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f10857e;

    /* renamed from: f  reason: collision with root package name */
    public ActionMenuView f10858f;

    /* renamed from: g  reason: collision with root package name */
    public C1151n f10859g;

    /* renamed from: h  reason: collision with root package name */
    public int f10860h;

    /* renamed from: i  reason: collision with root package name */
    public androidx.core.view.O f10861i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f10862j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f10863k;

    public AbstractC1127b(Context context) {
        this(context, null);
    }

    public static int c(View view, int i4, int i5) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE), i5);
        return Math.max(0, (i4 - view.getMeasuredWidth()) - 0);
    }

    public static int d(int i4, int i5, int i6, View view, boolean z4) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i7 = ((i6 - measuredHeight) / 2) + i5;
        if (z4) {
            view.layout(i4 - measuredWidth, i7, i4, measuredHeight + i7);
        } else {
            view.layout(i4, i7, i4 + measuredWidth, measuredHeight + i7);
        }
        return z4 ? -measuredWidth : measuredWidth;
    }

    public void e(int i4) {
        this.f10860h = i4;
        requestLayout();
    }

    public final androidx.core.view.O f(int i4, long j4) {
        androidx.core.view.O o4 = this.f10861i;
        if (o4 != null) {
            o4.b();
        }
        if (i4 != 0) {
            androidx.core.view.O a4 = androidx.core.view.J.a(this);
            a4.a(0.0f);
            a4.c(j4);
            C1125a c1125a = this.f10856d;
            c1125a.f10852c.f10861i = a4;
            c1125a.f10851b = i4;
            a4.d(c1125a);
            return a4;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        androidx.core.view.O a5 = androidx.core.view.J.a(this);
        a5.a(1.0f);
        a5.c(j4);
        C1125a c1125a2 = this.f10856d;
        c1125a2.f10852c.f10861i = a5;
        c1125a2.f10851b = i4;
        a5.d(c1125a2);
        return a5;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C0792a.f8731a, R.attr.actionBarStyle, 0);
        e(obtainStyledAttributes.getLayoutDimension(13, 0));
        obtainStyledAttributes.recycle();
        C1151n c1151n = this.f10859g;
        if (c1151n != null) {
            Configuration configuration2 = c1151n.f10925e.getResources().getConfiguration();
            int i4 = configuration2.screenWidthDp;
            int i5 = configuration2.screenHeightDp;
            c1151n.f10937q = (configuration2.smallestScreenWidthDp > 600 || i4 > 600 || (i4 > 960 && i5 > 720) || (i4 > 720 && i5 > 960)) ? 5 : (i4 >= 500 || (i4 > 640 && i5 > 480) || (i4 > 480 && i5 > 640)) ? 4 : i4 >= 360 ? 3 : 2;
            C1097o c1097o = c1151n.f10926f;
            if (c1097o != null) {
                c1097o.p(true);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f10863k = false;
        }
        if (!this.f10863k) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f10863k = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f10863k = false;
        }
        return true;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f10862j = false;
        }
        if (!this.f10862j) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f10862j = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f10862j = false;
        }
        return true;
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        if (i4 != getVisibility()) {
            androidx.core.view.O o4 = this.f10861i;
            if (o4 != null) {
                o4.b();
            }
            super.setVisibility(i4);
        }
    }

    public AbstractC1127b(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC1127b(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f10856d = new C1125a(this);
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) && typedValue.resourceId != 0) {
            this.f10857e = new ContextThemeWrapper(context, typedValue.resourceId);
        } else {
            this.f10857e = context;
        }
    }
}
