package k2;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import i2.C0980a;
/* renamed from: k2.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1213k extends LinearLayout.LayoutParams {

    /* renamed from: a  reason: collision with root package name */
    public final int f11196a;

    /* renamed from: b  reason: collision with root package name */
    public C1212j f11197b;

    /* renamed from: c  reason: collision with root package name */
    public final Interpolator f11198c;

    public C1213k(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11196a = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9626b);
        this.f11196a = obtainStyledAttributes.getInt(1, 0);
        this.f11197b = obtainStyledAttributes.getInt(0, 0) != 1 ? null : new C1212j();
        if (obtainStyledAttributes.hasValue(2)) {
            this.f11198c = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(2, 0));
        }
        obtainStyledAttributes.recycle();
    }

    public C1213k() {
        super(-1, -2);
        this.f11196a = 1;
    }

    public C1213k(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f11196a = 1;
    }

    public C1213k(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f11196a = 1;
    }

    public C1213k(LinearLayout.LayoutParams layoutParams) {
        super(layoutParams);
        this.f11196a = 1;
    }
}
