package D2;

import C2.i;
import C2.n;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.B;
import androidx.core.view.C0186x;
import androidx.core.view.D;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import i2.C0980a;
import java.util.WeakHashMap;
import s2.C1394a;
import x2.C1485w;
/* loaded from: classes.dex */
public class d extends FrameLayout {

    /* renamed from: h  reason: collision with root package name */
    public static final c f318h = new c();

    /* renamed from: d  reason: collision with root package name */
    public final n f319d;

    /* renamed from: e  reason: collision with root package name */
    public final int f320e;

    /* renamed from: f  reason: collision with root package name */
    public ColorStateList f321f;

    /* renamed from: g  reason: collision with root package name */
    public PorterDuff.Mode f322g;

    public d(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        WeakHashMap weakHashMap = J.f3079a;
        B.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        if (this.f320e > 0) {
            int measuredWidth = getMeasuredWidth();
            int i6 = this.f320e;
            if (measuredWidth > i6) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(i6, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), i5);
            }
        }
    }

    @Override // android.view.View
    public final void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f321f != null) {
            drawable = drawable.mutate();
            drawable.setTintList(this.f321f);
            drawable.setTintMode(this.f322g);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public final void setBackgroundTintList(ColorStateList colorStateList) {
        this.f321f = colorStateList;
        if (getBackground() != null) {
            Drawable mutate = getBackground().mutate();
            mutate.setTintList(colorStateList);
            mutate.setTintMode(this.f322g);
            if (mutate != getBackground()) {
                super.setBackgroundDrawable(mutate);
            }
        }
    }

    @Override // android.view.View
    public final void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f322g = mode;
        if (getBackground() != null) {
            Drawable mutate = getBackground().mutate();
            mutate.setTintMode(mode);
            if (mutate != getBackground()) {
                super.setBackgroundDrawable(mutate);
            }
        }
    }

    @Override // android.view.View
    public final void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f318h);
        super.setOnClickListener(onClickListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(Context context, AttributeSet attributeSet) {
        super(H2.a.a(context, attributeSet, 0, 0), attributeSet);
        GradientDrawable gradientDrawable;
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C0980a.f9650z);
        if (obtainStyledAttributes.hasValue(6)) {
            WeakHashMap weakHashMap = J.f3079a;
            D.k(this, obtainStyledAttributes.getDimensionPixelSize(6, 0));
        }
        obtainStyledAttributes.getInt(2, 0);
        if (obtainStyledAttributes.hasValue(8) || obtainStyledAttributes.hasValue(9)) {
            this.f319d = new n(n.b(context2, attributeSet, 0, 0));
        }
        float f4 = obtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(A2.d.a(context2, obtainStyledAttributes, 4));
        setBackgroundTintMode(C1485w.b(obtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        obtainStyledAttributes.getFloat(1, 1.0f);
        this.f320e = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        obtainStyledAttributes.getDimensionPixelSize(7, -1);
        obtainStyledAttributes.recycle();
        setOnTouchListener(f318h);
        setFocusable(true);
        if (getBackground() == null) {
            int d4 = C1394a.d(C1394a.b(this, R.attr.colorSurface), C1394a.b(this, R.attr.colorOnSurface), f4);
            n nVar = this.f319d;
            if (nVar != null) {
                int i4 = e.f323a;
                i iVar = new i(nVar);
                iVar.l(ColorStateList.valueOf(d4));
                gradientDrawable = iVar;
            } else {
                Resources resources = getResources();
                int i5 = e.f323a;
                float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(0);
                gradientDrawable2.setCornerRadius(dimension);
                gradientDrawable2.setColor(d4);
                gradientDrawable = gradientDrawable2;
            }
            ColorStateList colorStateList = this.f321f;
            if (colorStateList != null) {
                gradientDrawable.setTintList(colorStateList);
            }
            WeakHashMap weakHashMap2 = J.f3079a;
            C0186x.m(this, gradientDrawable);
        }
    }
}
