package k;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import e.C0809a;
/* loaded from: classes.dex */
public final class W0 extends C0809a {

    /* renamed from: b  reason: collision with root package name */
    public int f10839b;

    public W0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10839b = 0;
    }

    public W0() {
        this.f10839b = 0;
        this.f8905a = 8388627;
    }

    public W0(W0 w02) {
        super((C0809a) w02);
        this.f10839b = 0;
        this.f10839b = w02.f10839b;
    }

    public W0(C0809a c0809a) {
        super(c0809a);
        this.f10839b = 0;
    }

    public W0(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f10839b = 0;
        ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
    }

    public W0(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f10839b = 0;
    }
}
