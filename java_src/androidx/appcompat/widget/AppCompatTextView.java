package androidx.appcompat.widget;

import E.g;
import E.h;
import N.i;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import f.C0832a;
import java.lang.reflect.Method;
import k.C1121E;
import k.C1122F;
import k.C1134e0;
import k.C1136f0;
import k.C1138g0;
import k.C1162t;
import k.M0;
import k.O0;
import k.c1;
/* loaded from: classes.dex */
public class AppCompatTextView extends TextView {

    /* renamed from: d  reason: collision with root package name */
    public final C1162t f2578d;

    /* renamed from: e  reason: collision with root package name */
    public final C1134e0 f2579e;

    /* renamed from: f  reason: collision with root package name */
    public C1121E f2580f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2581g;

    /* renamed from: h  reason: collision with root package name */
    public C1138g0 f2582h;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f2578d;
        if (c1162t != null) {
            c1162t.a();
        }
        C1134e0 c1134e0 = this.f2579e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final int getAutoSizeMaxTextSize() {
        Method method = c1.f10879a;
        return super.getAutoSizeMaxTextSize();
    }

    @Override // android.widget.TextView
    public final int getAutoSizeMinTextSize() {
        Method method = c1.f10879a;
        return super.getAutoSizeMinTextSize();
    }

    @Override // android.widget.TextView
    public final int getAutoSizeStepGranularity() {
        Method method = c1.f10879a;
        return super.getAutoSizeStepGranularity();
    }

    @Override // android.widget.TextView
    public final int[] getAutoSizeTextAvailableSizes() {
        Method method = c1.f10879a;
        return super.getAutoSizeTextAvailableSizes();
    }

    @Override // android.widget.TextView
    public final int getAutoSizeTextType() {
        Method method = c1.f10879a;
        return super.getAutoSizeTextType() == 1 ? 1 : 0;
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return i.b(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public final int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public final int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    @Override // android.widget.TextView
    public final CharSequence getText() {
        return super.getText();
    }

    @Override // android.widget.TextView
    public final TextClassifier getTextClassifier() {
        return super.getTextClassifier();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f2579e.getClass();
        C1122F.a(this, editorInfo, onCreateInputConnection);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        C1134e0 c1134e0 = this.f2579e;
        if (c1134e0 != null) {
            c1134e0.getClass();
            Method method = c1.f10879a;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        super.onTextChanged(charSequence, i4, i5, i6);
        if (this.f2579e != null) {
            Method method = c1.f10879a;
        }
    }

    public final C1136f0 q() {
        if (this.f2582h == null) {
            this.f2582h = new C1138g0(this);
        }
        return this.f2582h;
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        if (this.f2580f == null) {
            this.f2580f = new C1121E(this);
        }
        this.f2580f.c(z4);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i4, int i5, int i6, int i7) {
        Method method = c1.f10879a;
        super.setAutoSizeTextTypeUniformWithConfiguration(i4, i5, i6, i7);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i4) {
        Method method = c1.f10879a;
        super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i4);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeWithDefaults(int i4) {
        Method method = c1.f10879a;
        super.setAutoSizeTextTypeWithDefaults(i4);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f2578d;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f2578d;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f2579e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f2579e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f2579e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f2579e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        if (this.f2580f == null) {
            this.f2580f = new C1121E(this);
        }
        super.setFilters(this.f2580f.a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public final void setFirstBaselineToTopHeight(int i4) {
        q().a(i4);
    }

    @Override // android.widget.TextView
    public final void setLastBaselineToBottomHeight(int i4) {
        q().b(i4);
    }

    @Override // android.widget.TextView
    public final void setLineHeight(int i4) {
        i.a(this, i4);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i4) {
        super.setTextAppearance(context, i4);
        C1134e0 c1134e0 = this.f2579e;
        if (c1134e0 != null) {
            c1134e0.e(i4, context);
        }
    }

    @Override // android.widget.TextView
    public final void setTextClassifier(TextClassifier textClassifier) {
        super.setTextClassifier(textClassifier);
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i4, float f4) {
        Method method = c1.f10879a;
        super.setTextSize(i4, f4);
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i4) {
        Typeface typeface2;
        if (this.f2581g) {
            return;
        }
        if (typeface == null || i4 <= 0) {
            typeface2 = null;
        } else {
            Context context = getContext();
            h hVar = g.f336a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typeface2 = Typeface.create(typeface, i4);
        }
        this.f2581g = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i4);
        } finally {
            this.f2581g = false;
        }
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatTextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        O0.a(context);
        this.f2581g = false;
        this.f2582h = null;
        M0.a(this, getContext());
        C1162t c1162t = new C1162t(this);
        this.f2578d = c1162t;
        c1162t.d(attributeSet, i4);
        C1134e0 c1134e0 = new C1134e0(this);
        this.f2579e = c1134e0;
        c1134e0.d(attributeSet, i4);
        c1134e0.b();
        if (this.f2580f == null) {
            this.f2580f = new C1121E(this);
        }
        this.f2580f.b(attributeSet, i4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i4, int i5, int i6, int i7) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i4 != 0 ? C0832a.a(i4, context) : null, i5 != 0 ? C0832a.a(i5, context) : null, i6 != 0 ? C0832a.a(i6, context) : null, i7 != 0 ? C0832a.a(i7, context) : null);
        C1134e0 c1134e0 = this.f2579e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i4, int i5, int i6, int i7) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i4 != 0 ? C0832a.a(i4, context) : null, i5 != 0 ? C0832a.a(i5, context) : null, i6 != 0 ? C0832a.a(i6, context) : null, i7 != 0 ? C0832a.a(i7, context) : null);
        C1134e0 c1134e0 = this.f2579e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }
}
