package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import com.android.systemui.shared.R;
import f.C0832a;
/* renamed from: k.v  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1166v extends CheckBox {

    /* renamed from: d  reason: collision with root package name */
    public final C1172y f10995d;

    /* renamed from: e  reason: collision with root package name */
    public final C1162t f10996e;

    /* renamed from: f  reason: collision with root package name */
    public final C1134e0 f10997f;

    /* renamed from: g  reason: collision with root package name */
    public C1121E f10998g;

    public C1166v(Context context) {
        this(context, null);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f10996e;
        if (c1162t != null) {
            c1162t.a();
        }
        C1134e0 c1134e0 = this.f10997f;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C1172y c1172y = this.f10995d;
        if (c1172y != null) {
            c1172y.getClass();
        }
        return compoundPaddingLeft;
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        if (this.f10998g == null) {
            this.f10998g = new C1121E(this);
        }
        this.f10998g.c(z4);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f10996e;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f10996e;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.CompoundButton
    public final void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C1172y c1172y = this.f10995d;
        if (c1172y != null) {
            if (c1172y.f11031f) {
                c1172y.f11031f = false;
                return;
            }
            c1172y.f11031f = true;
            c1172y.a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10997f;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10997f;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        if (this.f10998g == null) {
            this.f10998g = new C1121E(this);
        }
        super.setFilters(this.f10998g.a(inputFilterArr));
    }

    public C1166v(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1166v(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        O0.a(context);
        M0.a(this, getContext());
        C1172y c1172y = new C1172y(this);
        this.f10995d = c1172y;
        c1172y.b(attributeSet, i4);
        C1162t c1162t = new C1162t(this);
        this.f10996e = c1162t;
        c1162t.d(attributeSet, i4);
        C1134e0 c1134e0 = new C1134e0(this);
        this.f10997f = c1134e0;
        c1134e0.d(attributeSet, i4);
        if (this.f10998g == null) {
            this.f10998g = new C1121E(this);
        }
        this.f10998g.b(attributeSet, i4);
    }

    @Override // android.widget.CompoundButton
    public final void setButtonDrawable(int i4) {
        setButtonDrawable(C0832a.a(i4, getContext()));
    }
}
