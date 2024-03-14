package com.google.android.material.button;

import A2.d;
import C2.h;
import C2.i;
import C2.j;
import C2.m;
import C2.n;
import C2.y;
import H2.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import f.C0832a;
import i2.C0980a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import k.C1162t;
import k.C1164u;
import o2.C1329c;
import o2.C1330d;
import o2.C1335i;
import o2.InterfaceC1327a;
import s2.C1394a;
import x2.C1480r;
import x2.C1485w;
/* loaded from: classes.dex */
public class MaterialButton extends C1164u implements Checkable, y {

    /* renamed from: t  reason: collision with root package name */
    public static final int[] f7804t = {16842911};

    /* renamed from: u  reason: collision with root package name */
    public static final int[] f7805u = {16842912};

    /* renamed from: g  reason: collision with root package name */
    public final C1330d f7806g;

    /* renamed from: h  reason: collision with root package name */
    public final LinkedHashSet f7807h;

    /* renamed from: i  reason: collision with root package name */
    public C1335i f7808i;

    /* renamed from: j  reason: collision with root package name */
    public final PorterDuff.Mode f7809j;

    /* renamed from: k  reason: collision with root package name */
    public final ColorStateList f7810k;

    /* renamed from: l  reason: collision with root package name */
    public Drawable f7811l;

    /* renamed from: m  reason: collision with root package name */
    public final int f7812m;

    /* renamed from: n  reason: collision with root package name */
    public int f7813n;

    /* renamed from: o  reason: collision with root package name */
    public int f7814o;

    /* renamed from: p  reason: collision with root package name */
    public final int f7815p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f7816q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f7817r;

    /* renamed from: s  reason: collision with root package name */
    public final int f7818s;

    public MaterialButton(Context context) {
        this(context, null);
    }

    @Override // C2.y
    public final void b(n nVar) {
        if (!c()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f7806g.c(nVar);
    }

    public final boolean c() {
        C1330d c1330d = this.f7806g;
        return (c1330d == null || c1330d.f11863n) ? false : true;
    }

    public final void d() {
        int i4 = this.f7818s;
        boolean z4 = false;
        if (i4 == 1 || i4 == 2) {
            setCompoundDrawablesRelative(this.f7811l, null, null, null);
            return;
        }
        if (i4 == 3 || i4 == 4) {
            setCompoundDrawablesRelative(null, null, this.f7811l, null);
            return;
        }
        if (i4 == 16 || i4 == 32) {
            z4 = true;
        }
        if (z4) {
            setCompoundDrawablesRelative(null, this.f7811l, null, null);
        }
    }

    public final void e(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public final void f(ColorStateList colorStateList) {
        if (!c()) {
            C1162t c1162t = this.f10983d;
            if (c1162t != null) {
                c1162t.h(colorStateList);
                return;
            }
            return;
        }
        C1330d c1330d = this.f7806g;
        if (c1330d.f11858i != colorStateList) {
            c1330d.f11858i = colorStateList;
            if (c1330d.b(false) != null) {
                c1330d.b(false).setTintList(c1330d.f11858i);
            }
        }
    }

    public final void g(PorterDuff.Mode mode) {
        if (!c()) {
            C1162t c1162t = this.f10983d;
            if (c1162t != null) {
                c1162t.i(mode);
                return;
            }
            return;
        }
        C1330d c1330d = this.f7806g;
        if (c1330d.f11857h != mode) {
            c1330d.f11857h = mode;
            if (c1330d.b(false) == null || c1330d.f11857h == null) {
                return;
            }
            c1330d.b(false).setTintMode(c1330d.f11857h);
        }
    }

    @Override // android.view.View
    public final ColorStateList getBackgroundTintList() {
        if (c()) {
            return this.f7806g.f11858i;
        }
        C1162t c1162t = this.f10983d;
        if (c1162t != null) {
            return c1162t.b();
        }
        return null;
    }

    @Override // android.view.View
    public final PorterDuff.Mode getBackgroundTintMode() {
        if (c()) {
            return this.f7806g.f11857h;
        }
        C1162t c1162t = this.f10983d;
        if (c1162t != null) {
            return c1162t.c();
        }
        return null;
    }

    public final void h(boolean z4) {
        Drawable drawable = this.f7811l;
        boolean z5 = true;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.f7811l = mutate;
            mutate.setTintList(this.f7810k);
            PorterDuff.Mode mode = this.f7809j;
            if (mode != null) {
                this.f7811l.setTintMode(mode);
            }
            int i4 = this.f7812m;
            if (i4 == 0) {
                i4 = this.f7811l.getIntrinsicWidth();
            }
            int i5 = this.f7812m;
            if (i5 == 0) {
                i5 = this.f7811l.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f7811l;
            int i6 = this.f7813n;
            int i7 = this.f7814o;
            drawable2.setBounds(i6, i7, i4 + i6, i5 + i7);
            this.f7811l.setVisible(true, z4);
        }
        if (z4) {
            d();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i8 = this.f7818s;
        if (!(i8 == 1 || i8 == 2) || drawable3 == this.f7811l) {
            if (!(i8 == 3 || i8 == 4) || drawable5 == this.f7811l) {
                if (!(i8 == 16 || i8 == 32) || drawable4 == this.f7811l) {
                    z5 = false;
                }
            }
        }
        if (z5) {
            d();
        }
    }

    public final void i(int i4, int i5) {
        Layout.Alignment alignment;
        int min;
        if (this.f7811l == null || getLayout() == null) {
            return;
        }
        int i6 = this.f7818s;
        if (!(i6 == 1 || i6 == 2)) {
            if (!(i6 == 3 || i6 == 4)) {
                if (i6 == 16 || i6 == 32) {
                    this.f7813n = 0;
                    if (i6 == 16) {
                        this.f7814o = 0;
                        h(false);
                        return;
                    }
                    int i7 = this.f7812m;
                    if (i7 == 0) {
                        i7 = this.f7811l.getIntrinsicHeight();
                    }
                    if (getLineCount() > 1) {
                        min = getLayout().getHeight();
                    } else {
                        TextPaint paint = getPaint();
                        String charSequence = getText().toString();
                        if (getTransformationMethod() != null) {
                            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
                        }
                        Rect rect = new Rect();
                        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
                        min = Math.min(rect.height(), getLayout().getHeight());
                    }
                    int max = Math.max(0, (((((i5 - min) - getPaddingTop()) - i7) - this.f7815p) - getPaddingBottom()) / 2);
                    if (this.f7814o != max) {
                        this.f7814o = max;
                        h(false);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        this.f7814o = 0;
        int textAlignment = getTextAlignment();
        if (textAlignment != 1) {
            alignment = (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
        } else {
            int gravity = getGravity() & 8388615;
            alignment = gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
        }
        int i8 = this.f7818s;
        if (i8 == 1 || i8 == 3 || ((i8 == 2 && alignment == Layout.Alignment.ALIGN_NORMAL) || (i8 == 4 && alignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f7813n = 0;
            h(false);
            return;
        }
        int i9 = this.f7812m;
        if (i9 == 0) {
            i9 = this.f7811l.getIntrinsicWidth();
        }
        int lineCount = getLineCount();
        int i10 = 0;
        for (int i11 = 0; i11 < lineCount; i11++) {
            CharSequence subSequence = getText().subSequence(getLayout().getLineStart(i11), getLayout().getLineEnd(i11));
            TextPaint paint2 = getPaint();
            String charSequence2 = subSequence.toString();
            if (getTransformationMethod() != null) {
                charSequence2 = getTransformationMethod().getTransformation(charSequence2, this).toString();
            }
            i10 = Math.max(i10, Math.min((int) paint2.measureText(charSequence2), getLayout().getEllipsizedWidth()));
        }
        WeakHashMap weakHashMap = J.f3079a;
        int d4 = ((((i4 - i10) - C0187y.d(this)) - i9) - this.f7815p) - C0187y.e(this);
        if (alignment == Layout.Alignment.ALIGN_CENTER) {
            d4 /= 2;
        }
        if ((C0187y.c(this) == 1) != (this.f7818s == 4)) {
            d4 = -d4;
        }
        if (this.f7813n != d4) {
            this.f7813n = d4;
            h(false);
        }
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f7816q;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (c()) {
            j.b(this, this.f7806g.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 2);
        C1330d c1330d = this.f7806g;
        if (c1330d != null && c1330d.f11864o) {
            Button.mergeDrawableStates(onCreateDrawableState, f7804t);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(onCreateDrawableState, f7805u);
        }
        return onCreateDrawableState;
    }

    @Override // k.C1164u, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        C1330d c1330d = this.f7806g;
        accessibilityEvent.setClassName((c1330d != null && c1330d.f11864o ? CompoundButton.class : Button.class).getName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // k.C1164u, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C1330d c1330d = this.f7806g;
        boolean z4 = true;
        accessibilityNodeInfo.setClassName((c1330d != null && c1330d.f11864o ? CompoundButton.class : Button.class).getName());
        C1330d c1330d2 = this.f7806g;
        if (c1330d2 == null || !c1330d2.f11864o) {
            z4 = false;
        }
        accessibilityNodeInfo.setCheckable(z4);
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // k.C1164u, android.widget.TextView, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1329c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1329c c1329c = (C1329c) parcelable;
        super.onRestoreInstanceState(c1329c.f1528d);
        setChecked(c1329c.f11849f);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        C1329c c1329c = new C1329c(super.onSaveInstanceState());
        c1329c.f11849f = this.f7816q;
        return c1329c;
    }

    @Override // k.C1164u, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        super.onTextChanged(charSequence, i4, i5, i6);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.f7806g.f11865p) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f7811l != null) {
            if (this.f7811l.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i4) {
        if (!c()) {
            super.setBackgroundColor(i4);
            return;
        }
        C1330d c1330d = this.f7806g;
        if (c1330d.b(false) != null) {
            c1330d.b(false).setTint(i4);
        }
    }

    @Override // k.C1164u, android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        if (!c()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
        } else {
            Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
            C1330d c1330d = this.f7806g;
            c1330d.f11863n = true;
            ColorStateList colorStateList = c1330d.f11858i;
            MaterialButton materialButton = c1330d.f11850a;
            materialButton.f(colorStateList);
            materialButton.g(c1330d.f11857h);
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // k.C1164u, android.view.View
    public final void setBackgroundResource(int i4) {
        setBackgroundDrawable(i4 != 0 ? C0832a.a(i4, getContext()) : null);
    }

    @Override // android.view.View
    public final void setBackgroundTintList(ColorStateList colorStateList) {
        f(colorStateList);
    }

    @Override // android.view.View
    public final void setBackgroundTintMode(PorterDuff.Mode mode) {
        g(mode);
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z4) {
        C1330d c1330d = this.f7806g;
        if ((c1330d != null && c1330d.f11864o) && isEnabled() && this.f7816q != z4) {
            this.f7816q = z4;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z5 = this.f7816q;
                if (!materialButtonToggleGroup.f7825i) {
                    materialButtonToggleGroup.b(getId(), z5);
                }
            }
            if (this.f7817r) {
                return;
            }
            this.f7817r = true;
            Iterator it = this.f7807h.iterator();
            while (it.hasNext()) {
                ((InterfaceC1327a) it.next()).a();
            }
            this.f7817r = false;
        }
    }

    @Override // android.view.View
    public final void setElevation(float f4) {
        super.setElevation(f4);
        if (c()) {
            this.f7806g.b(false).k(f4);
        }
    }

    @Override // android.view.View
    public final void setPressed(boolean z4) {
        C1335i c1335i = this.f7808i;
        if (c1335i != null) {
            c1335i.f11875a.invalidate();
        }
        super.setPressed(z4);
    }

    @Override // android.view.View
    public final void setTextAlignment(int i4) {
        super.setTextAlignment(i4);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f7816q);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonStyle);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i4) {
        super(a.a(context, attributeSet, i4, R.style.Widget_MaterialComponents_Button), attributeSet, i4);
        boolean z4;
        this.f7807h = new LinkedHashSet();
        this.f7816q = false;
        this.f7817r = false;
        Context context2 = getContext();
        TypedArray d4 = C1480r.d(context2, attributeSet, C0980a.f9637m, i4, R.style.Widget_MaterialComponents_Button, new int[0]);
        int dimensionPixelSize = d4.getDimensionPixelSize(12, 0);
        this.f7815p = dimensionPixelSize;
        this.f7809j = C1485w.b(d4.getInt(15, -1), PorterDuff.Mode.SRC_IN);
        this.f7810k = d.a(getContext(), d4, 14);
        this.f7811l = d.c(getContext(), d4, 10);
        this.f7818s = d4.getInteger(11, 1);
        this.f7812m = d4.getDimensionPixelSize(13, 0);
        C1330d c1330d = new C1330d(this, new n(n.b(context2, attributeSet, i4, R.style.Widget_MaterialComponents_Button)));
        this.f7806g = c1330d;
        c1330d.f11852c = d4.getDimensionPixelOffset(1, 0);
        c1330d.f11853d = d4.getDimensionPixelOffset(2, 0);
        c1330d.f11854e = d4.getDimensionPixelOffset(3, 0);
        c1330d.f11855f = d4.getDimensionPixelOffset(4, 0);
        if (d4.hasValue(8)) {
            int dimensionPixelSize2 = d4.getDimensionPixelSize(8, -1);
            n nVar = c1330d.f11851b;
            float f4 = dimensionPixelSize2;
            nVar.getClass();
            m mVar = new m(nVar);
            mVar.f189e = new C2.a(f4);
            mVar.f190f = new C2.a(f4);
            mVar.f191g = new C2.a(f4);
            mVar.f192h = new C2.a(f4);
            c1330d.c(new n(mVar));
        }
        c1330d.f11856g = d4.getDimensionPixelSize(20, 0);
        c1330d.f11857h = C1485w.b(d4.getInt(7, -1), PorterDuff.Mode.SRC_IN);
        c1330d.f11858i = d.a(getContext(), d4, 6);
        c1330d.f11859j = d.a(getContext(), d4, 19);
        c1330d.f11860k = d.a(getContext(), d4, 16);
        c1330d.f11864o = d4.getBoolean(5, false);
        c1330d.f11867r = d4.getDimensionPixelSize(9, 0);
        c1330d.f11865p = d4.getBoolean(21, true);
        WeakHashMap weakHashMap = J.f3079a;
        int e4 = C0187y.e(this);
        int paddingTop = getPaddingTop();
        int d5 = C0187y.d(this);
        int paddingBottom = getPaddingBottom();
        if (d4.hasValue(0)) {
            c1330d.f11863n = true;
            f(c1330d.f11858i);
            g(c1330d.f11857h);
            z4 = false;
        } else {
            i iVar = new i(c1330d.f11851b);
            iVar.j(getContext());
            iVar.setTintList(c1330d.f11858i);
            PorterDuff.Mode mode = c1330d.f11857h;
            if (mode != null) {
                iVar.setTintMode(mode);
            }
            ColorStateList colorStateList = c1330d.f11859j;
            iVar.f160d.f147k = c1330d.f11856g;
            iVar.invalidateSelf();
            h hVar = iVar.f160d;
            if (hVar.f140d != colorStateList) {
                hVar.f140d = colorStateList;
                iVar.onStateChange(iVar.getState());
            }
            i iVar2 = new i(c1330d.f11851b);
            iVar2.setTint(0);
            float f5 = c1330d.f11856g;
            int b4 = c1330d.f11862m ? C1394a.b(this, R.attr.colorSurface) : 0;
            iVar2.f160d.f147k = f5;
            iVar2.invalidateSelf();
            ColorStateList valueOf = ColorStateList.valueOf(b4);
            h hVar2 = iVar2.f160d;
            if (hVar2.f140d != valueOf) {
                hVar2.f140d = valueOf;
                iVar2.onStateChange(iVar2.getState());
            }
            i iVar3 = new i(c1330d.f11851b);
            c1330d.f11861l = iVar3;
            iVar3.setTint(-1);
            ColorStateList colorStateList2 = c1330d.f11860k;
            int i5 = com.google.android.material.ripple.a.f8061a;
            RippleDrawable rippleDrawable = new RippleDrawable(colorStateList2 == null ? ColorStateList.valueOf(0) : colorStateList2, new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{iVar2, iVar}), c1330d.f11852c, c1330d.f11854e, c1330d.f11853d, c1330d.f11855f), c1330d.f11861l);
            c1330d.f11866q = rippleDrawable;
            e(rippleDrawable);
            z4 = false;
            i b5 = c1330d.b(false);
            if (b5 != null) {
                b5.k(c1330d.f11867r);
                b5.setState(getDrawableState());
            }
        }
        C0187y.h(this, e4 + c1330d.f11852c, paddingTop + c1330d.f11854e, d5 + c1330d.f11853d, paddingBottom + c1330d.f11855f);
        d4.recycle();
        setCompoundDrawablePadding(dimensionPixelSize);
        h(this.f7811l != null ? true : z4);
    }
}
