package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.android.systemui.shared.R;
import f.C0832a;
/* loaded from: classes.dex */
public class M extends RadioButton {

    /* renamed from: d  reason: collision with root package name */
    public final C1172y f10795d;

    /* renamed from: e  reason: collision with root package name */
    public final C1162t f10796e;

    /* renamed from: f  reason: collision with root package name */
    public final C1134e0 f10797f;

    /* renamed from: g  reason: collision with root package name */
    public C1121E f10798g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        O0.a(context);
        M0.a(this, getContext());
        C1172y c1172y = new C1172y(this);
        this.f10795d = c1172y;
        c1172y.b(attributeSet, R.attr.radioButtonStyle);
        C1162t c1162t = new C1162t(this);
        this.f10796e = c1162t;
        c1162t.d(attributeSet, R.attr.radioButtonStyle);
        C1134e0 c1134e0 = new C1134e0(this);
        this.f10797f = c1134e0;
        c1134e0.d(attributeSet, R.attr.radioButtonStyle);
        if (this.f10798g == null) {
            this.f10798g = new C1121E(this);
        }
        this.f10798g.b(attributeSet, R.attr.radioButtonStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f10796e;
        if (c1162t != null) {
            c1162t.a();
        }
        C1134e0 c1134e0 = this.f10797f;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C1172y c1172y = this.f10795d;
        if (c1172y != null) {
            c1172y.getClass();
        }
        return compoundPaddingLeft;
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        if (this.f10798g == null) {
            this.f10798g = new C1121E(this);
        }
        this.f10798g.c(z4);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f10796e;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f10796e;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.CompoundButton
    public final void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C1172y c1172y = this.f10795d;
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
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10797f;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10797f;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        if (this.f10798g == null) {
            this.f10798g = new C1121E(this);
        }
        super.setFilters(this.f10798g.a(inputFilterArr));
    }

    @Override // android.widget.CompoundButton
    public final void setButtonDrawable(int i4) {
        setButtonDrawable(C0832a.a(i4, getContext()));
    }
}
