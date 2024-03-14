package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import com.android.systemui.shared.R;
import f.C0832a;
/* loaded from: classes.dex */
public final class J extends MultiAutoCompleteTextView {

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f10779g = {16843126};

    /* renamed from: d  reason: collision with root package name */
    public final C1162t f10780d;

    /* renamed from: e  reason: collision with root package name */
    public final C1134e0 f10781e;

    /* renamed from: f  reason: collision with root package name */
    public final C1120D f10782f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        O0.a(context);
        M0.a(this, getContext());
        R0 m4 = R0.m(getContext(), attributeSet, f10779g, R.attr.autoCompleteTextViewStyle);
        if (m4.l(0)) {
            setDropDownBackgroundDrawable(m4.e(0));
        }
        m4.n();
        C1162t c1162t = new C1162t(this);
        this.f10780d = c1162t;
        c1162t.d(attributeSet, R.attr.autoCompleteTextViewStyle);
        C1134e0 c1134e0 = new C1134e0(this);
        this.f10781e = c1134e0;
        c1134e0.d(attributeSet, R.attr.autoCompleteTextViewStyle);
        c1134e0.b();
        C1120D c1120d = new C1120D(this);
        this.f10782f = c1120d;
        c1120d.b(attributeSet, R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean isFocusable = isFocusable();
            boolean isClickable = isClickable();
            boolean isLongClickable = isLongClickable();
            int inputType = getInputType();
            KeyListener a4 = c1120d.a(keyListener);
            if (a4 == keyListener) {
                return;
            }
            super.setKeyListener(a4);
            setRawInputType(inputType);
            setFocusable(isFocusable);
            setClickable(isClickable);
            setLongClickable(isLongClickable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f10780d;
        if (c1162t != null) {
            c1162t.a();
        }
        C1134e0 c1134e0 = this.f10781e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C1122F.a(this, editorInfo, onCreateInputConnection);
        return this.f10782f.c(onCreateInputConnection);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f10780d;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f10780d;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10781e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10781e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public final void setDropDownBackgroundResource(int i4) {
        setDropDownBackgroundDrawable(C0832a.a(i4, getContext()));
    }

    @Override // android.widget.TextView
    public final void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f10782f.a(keyListener));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i4) {
        super.setTextAppearance(context, i4);
        C1134e0 c1134e0 = this.f10781e;
        if (c1134e0 != null) {
            c1134e0.e(i4, context);
        }
    }
}
