package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;
/* renamed from: k.l0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1148l0 extends ToggleButton {

    /* renamed from: d  reason: collision with root package name */
    public final C1162t f10920d;

    /* renamed from: e  reason: collision with root package name */
    public final C1134e0 f10921e;

    /* renamed from: f  reason: collision with root package name */
    public C1121E f10922f;

    public C1148l0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842827);
        M0.a(this, getContext());
        C1162t c1162t = new C1162t(this);
        this.f10920d = c1162t;
        c1162t.d(attributeSet, 16842827);
        C1134e0 c1134e0 = new C1134e0(this);
        this.f10921e = c1134e0;
        c1134e0.d(attributeSet, 16842827);
        if (this.f10922f == null) {
            this.f10922f = new C1121E(this);
        }
        this.f10922f.b(attributeSet, 16842827);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f10920d;
        if (c1162t != null) {
            c1162t.a();
        }
        C1134e0 c1134e0 = this.f10921e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        if (this.f10922f == null) {
            this.f10922f = new C1121E(this);
        }
        this.f10922f.c(z4);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f10920d;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f10920d;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10921e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10921e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        if (this.f10922f == null) {
            this.f10922f = new C1121E(this);
        }
        super.setFilters(this.f10922f.a(inputFilterArr));
    }
}
