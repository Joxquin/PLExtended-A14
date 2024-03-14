package com.google.android.material.chip;

import A2.g;
import C2.j;
import C2.m;
import C2.n;
import C2.y;
import F.c;
import M.d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.D;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.ripple.a;
import i2.C0980a;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.WeakHashMap;
import k.C1166v;
import q2.C1366b;
import q2.e;
import q2.f;
import q2.h;
import x2.C1478p;
import x2.C1480r;
/* loaded from: classes.dex */
public class Chip extends C1166v implements e, y, Checkable {

    /* renamed from: w  reason: collision with root package name */
    public static final Rect f7830w = new Rect();

    /* renamed from: x  reason: collision with root package name */
    public static final int[] f7831x = {16842913};

    /* renamed from: y  reason: collision with root package name */
    public static final int[] f7832y = {16842911};

    /* renamed from: h  reason: collision with root package name */
    public f f7833h;

    /* renamed from: i  reason: collision with root package name */
    public InsetDrawable f7834i;

    /* renamed from: j  reason: collision with root package name */
    public RippleDrawable f7835j;

    /* renamed from: k  reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f7836k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7837l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f7838m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f7839n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f7840o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f7841p;

    /* renamed from: q  reason: collision with root package name */
    public int f7842q;

    /* renamed from: r  reason: collision with root package name */
    public int f7843r;

    /* renamed from: s  reason: collision with root package name */
    public CharSequence f7844s;

    /* renamed from: t  reason: collision with root package name */
    public final Rect f7845t;

    /* renamed from: u  reason: collision with root package name */
    public final RectF f7846u;

    /* renamed from: v  reason: collision with root package name */
    public final C1366b f7847v;

    public Chip(Context context) {
        this(context, null);
    }

    @Override // q2.e
    public final void a() {
        c(this.f7843r);
        requestLayout();
        invalidateOutline();
    }

    @Override // C2.y
    public final void b(n nVar) {
        this.f7833h.b(nVar);
    }

    public final void c(int i4) {
        this.f7843r = i4;
        if (!this.f7841p) {
            InsetDrawable insetDrawable = this.f7834i;
            if (insetDrawable == null) {
                f();
                return;
            } else if (insetDrawable != null) {
                this.f7834i = null;
                setMinWidth(0);
                f fVar = this.f7833h;
                setMinHeight((int) (fVar != null ? fVar.f12001E : 0.0f));
                f();
                return;
            } else {
                return;
            }
        }
        int max = Math.max(0, i4 - ((int) this.f7833h.f12001E));
        int max2 = Math.max(0, i4 - this.f7833h.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            InsetDrawable insetDrawable2 = this.f7834i;
            if (insetDrawable2 == null) {
                f();
                return;
            } else if (insetDrawable2 != null) {
                this.f7834i = null;
                setMinWidth(0);
                f fVar2 = this.f7833h;
                setMinHeight((int) (fVar2 != null ? fVar2.f12001E : 0.0f));
                f();
                return;
            } else {
                return;
            }
        }
        int i5 = max2 > 0 ? max2 / 2 : 0;
        int i6 = max > 0 ? max / 2 : 0;
        if (this.f7834i != null) {
            Rect rect = new Rect();
            this.f7834i.getPadding(rect);
            if (rect.top == i6 && rect.bottom == i6 && rect.left == i5 && rect.right == i5) {
                f();
                return;
            }
        }
        if (getMinHeight() != i4) {
            setMinHeight(i4);
        }
        if (getMinWidth() != i4) {
            setMinWidth(i4);
        }
        this.f7834i = new InsetDrawable((Drawable) this.f7833h, i5, i6, i5, i6);
        f();
    }

    public final RectF d() {
        this.f7846u.setEmpty();
        e();
        return this.f7846u;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // k.C1166v, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i4;
        super.drawableStateChanged();
        f fVar = this.f7833h;
        boolean z4 = false;
        if (fVar != null && f.v(fVar.f12017Q)) {
            f fVar2 = this.f7833h;
            ?? isEnabled = isEnabled();
            int i5 = isEnabled;
            if (this.f7840o) {
                i5 = isEnabled + 1;
            }
            int i6 = i5;
            if (this.f7839n) {
                i6 = i5 + 1;
            }
            int i7 = i6;
            if (this.f7838m) {
                i7 = i6 + 1;
            }
            int i8 = i7;
            if (isChecked()) {
                i8 = i7 + 1;
            }
            int[] iArr = new int[i8];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i4 = 1;
            } else {
                i4 = 0;
            }
            if (this.f7840o) {
                iArr[i4] = 16842908;
                i4++;
            }
            if (this.f7839n) {
                iArr[i4] = 16843623;
                i4++;
            }
            if (this.f7838m) {
                iArr[i4] = 16842919;
                i4++;
            }
            if (isChecked()) {
                iArr[i4] = 16842913;
            }
            if (!Arrays.equals(fVar2.f11995A0, iArr)) {
                fVar2.f11995A0 = iArr;
                if (fVar2.E()) {
                    z4 = fVar2.x(fVar2.getState(), iArr);
                }
            }
        }
        if (z4) {
            invalidate();
        }
    }

    public final boolean e() {
        f fVar = this.f7833h;
        if (fVar != null) {
            Drawable drawable = fVar.f12017Q;
            if (drawable == null) {
                drawable = null;
            } else if (drawable instanceof c) {
                drawable = ((c) drawable).b();
            }
            if (drawable != null) {
                return true;
            }
        }
        return false;
    }

    public final void f() {
        int i4 = a.f8061a;
        ColorStateList colorStateList = this.f7833h.f12009I;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        Drawable drawable = this.f7834i;
        if (drawable == null) {
            drawable = this.f7833h;
        }
        this.f7835j = new RippleDrawable(colorStateList, drawable, null);
        f fVar = this.f7833h;
        if (fVar.f11996B0) {
            fVar.f11996B0 = false;
            fVar.f11998C0 = null;
            fVar.onStateChange(fVar.getState());
        }
        RippleDrawable rippleDrawable = this.f7835j;
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.m(this, rippleDrawable);
        g();
    }

    public final void g() {
        f fVar;
        if (TextUtils.isEmpty(getText()) || (fVar = this.f7833h) == null) {
            return;
        }
        int s4 = (int) (fVar.s() + fVar.f12032f0 + fVar.f12029c0);
        f fVar2 = this.f7833h;
        int r4 = (int) (fVar2.r() + fVar2.f12025Y + fVar2.f12028b0);
        if (this.f7834i != null) {
            Rect rect = new Rect();
            this.f7834i.getPadding(rect);
            r4 += rect.left;
            s4 += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = J.f3079a;
        C0187y.h(this, r4, paddingTop, s4, paddingBottom);
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public final CharSequence getAccessibilityClassName() {
        if (TextUtils.isEmpty(this.f7844s)) {
            f fVar = this.f7833h;
            if (!(fVar != null && fVar.f12021U)) {
                return isClickable() ? "android.widget.Button" : "android.view.View";
            }
            ViewParent parent = getParent();
            if (parent instanceof h) {
                ((h) parent).getClass();
                throw null;
            }
            return "android.widget.Button";
        }
        return this.f7844s;
    }

    @Override // android.widget.TextView
    public final TextUtils.TruncateAt getEllipsize() {
        f fVar = this.f7833h;
        if (fVar != null) {
            return fVar.f12002E0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        super.getFocusedRect(rect);
    }

    public final void h() {
        TextPaint paint = getPaint();
        f fVar = this.f7833h;
        if (fVar != null) {
            paint.drawableState = fVar.getState();
        }
        f fVar2 = this.f7833h;
        g gVar = fVar2 != null ? fVar2.f12039m0.f12881f : null;
        if (gVar != null) {
            gVar.d(getContext(), paint, this.f7847v);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.b(this, this.f7833h);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f7831x);
        }
        f fVar = this.f7833h;
        if (fVar != null && fVar.f12021U) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f7832y);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z4, int i4, Rect rect) {
        super.onFocusChanged(z4, i4, rect);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            boolean contains = d().contains(motionEvent.getX(), motionEvent.getY());
            if (this.f7839n != contains) {
                this.f7839n = contains;
                refreshDrawableState();
            }
        } else if (actionMasked == 10 && this.f7839n) {
            this.f7839n = false;
            refreshDrawableState();
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        f fVar = this.f7833h;
        accessibilityNodeInfo.setCheckable(fVar != null && fVar.f12021U);
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof h) {
            ((h) getParent()).getClass();
            Object tag = getTag(R.id.row_index_key);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) d.a(!(tag instanceof Integer) ? -1 : ((Integer) tag).intValue(), 1, -1, 1, false, isChecked()).f1348a);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i4) {
        if (d().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i4) {
        super.onRtlPropertiesChanged(i4);
        if (this.f7842q != i4) {
            this.f7842q = i4;
            g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
        if (r0 != 3) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.d()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L43
            if (r0 == r2) goto L2f
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L38
            goto L50
        L21:
            boolean r0 = r5.f7838m
            if (r0 == 0) goto L50
            if (r1 != 0) goto L4e
            if (r0 == 0) goto L4e
            r5.f7838m = r3
            r5.refreshDrawableState()
            goto L4e
        L2f:
            boolean r0 = r5.f7838m
            if (r0 == 0) goto L38
            r5.playSoundEffect(r3)
            r0 = r2
            goto L39
        L38:
            r0 = r3
        L39:
            boolean r1 = r5.f7838m
            if (r1 == 0) goto L51
            r5.f7838m = r3
            r5.refreshDrawableState()
            goto L51
        L43:
            if (r1 == 0) goto L50
            boolean r0 = r5.f7838m
            if (r0 == r2) goto L4e
            r5.f7838m = r2
            r5.refreshDrawableState()
        L4e:
            r0 = r2
            goto L51
        L50:
            r0 = r3
        L51:
            if (r0 != 0) goto L5b
            boolean r5 = super.onTouchEvent(r6)
            if (r5 == 0) goto L5a
            goto L5b
        L5a:
            r2 = r3
        L5b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void setBackground(Drawable drawable) {
        Drawable drawable2 = this.f7834i;
        if (drawable2 == null) {
            drawable2 = this.f7833h;
        }
        if (drawable == drawable2 || drawable == this.f7835j) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i4) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // k.C1166v, android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        Drawable drawable2 = this.f7834i;
        if (drawable2 == null) {
            drawable2 = this.f7833h;
        }
        if (drawable == drawable2 || drawable == this.f7835j) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // k.C1166v, android.view.View
    public final void setBackgroundResource(int i4) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public final void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public final void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void setChecked(boolean z4) {
        f fVar = this.f7833h;
        if (fVar == null) {
            this.f7837l = z4;
        } else if (fVar.f12021U) {
            super.setChecked(z4);
        }
    }

    @Override // k.C1166v, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // k.C1166v, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i4, int i5, int i6, int i7) {
        if (i4 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i6 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i4, i5, i6, i7);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i4, int i5, int i6, int i7) {
        if (i4 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i6 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i4, i5, i6, i7);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.view.View
    public final void setElevation(float f4) {
        super.setElevation(f4);
        f fVar = this.f7833h;
        if (fVar != null) {
            fVar.k(f4);
        }
    }

    @Override // android.widget.TextView
    public final void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f7833h == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        f fVar = this.f7833h;
        if (fVar != null) {
            fVar.f12002E0 = truncateAt;
        }
    }

    @Override // android.widget.TextView
    public final void setGravity(int i4) {
        if (i4 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i4);
        }
    }

    @Override // android.view.View
    public final void setLayoutDirection(int i4) {
        if (this.f7833h == null) {
            return;
        }
        super.setLayoutDirection(i4);
    }

    @Override // android.widget.TextView
    public final void setLines(int i4) {
        if (i4 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i4);
    }

    @Override // android.widget.TextView
    public final void setMaxLines(int i4) {
        if (i4 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i4);
    }

    @Override // android.widget.TextView
    public final void setMaxWidth(int i4) {
        super.setMaxWidth(i4);
        f fVar = this.f7833h;
        if (fVar != null) {
            fVar.f12006G0 = i4;
        }
    }

    @Override // android.widget.TextView
    public final void setMinLines(int i4) {
        if (i4 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i4);
    }

    @Override // android.widget.CompoundButton
    public final void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f7836k = onCheckedChangeListener;
    }

    @Override // android.widget.TextView
    public final void setSingleLine(boolean z4) {
        if (!z4) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z4);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        f fVar = this.f7833h;
        if (fVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(fVar.f12004F0 ? null : charSequence, bufferType);
        f fVar2 = this.f7833h;
        if (fVar2 == null || TextUtils.equals(fVar2.f12010J, charSequence)) {
            return;
        }
        fVar2.f12010J = charSequence;
        fVar2.f12039m0.f12879d = true;
        fVar2.invalidateSelf();
        fVar2.w();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i4) {
        super.setTextAppearance(context, i4);
        f fVar = this.f7833h;
        if (fVar != null) {
            fVar.B(new g(i4, fVar.f12033g0));
        }
        h();
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i4, float f4) {
        super.setTextSize(i4, f4);
        f fVar = this.f7833h;
        if (fVar != null) {
            float applyDimension = TypedValue.applyDimension(i4, f4, getResources().getDisplayMetrics());
            C1478p c1478p = fVar.f12039m0;
            g gVar = c1478p.f12881f;
            if (gVar != null) {
                gVar.f100k = applyDimension;
                c1478p.f12876a.setTextSize(applyDimension);
                fVar.a();
            }
        }
        h();
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipStyle);
    }

    public Chip(Context context, AttributeSet attributeSet, int i4) {
        super(H2.a.a(context, attributeSet, i4, R.style.Widget_MaterialComponents_Chip_Action), attributeSet, i4);
        f fVar;
        int resourceId;
        int resourceId2;
        ColorStateList a4;
        int resourceId3;
        this.f7845t = new Rect();
        this.f7846u = new RectF();
        this.f7847v = new C1366b(this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") == null) {
                if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") == null) {
                    if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") == null) {
                        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") == null) {
                            if (attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) == 1) {
                                if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                                    Log.w("Chip", "Chip text must be vertically center and start aligned");
                                }
                            } else {
                                throw new UnsupportedOperationException("Chip does not support multi-line text");
                            }
                        } else {
                            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
                        }
                    } else {
                        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
                    }
                } else {
                    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
                }
            } else {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
        }
        f fVar2 = new f(context2, attributeSet, i4);
        Context context3 = fVar2.f12033g0;
        int[] iArr = C0980a.f9628d;
        TypedArray d4 = C1480r.d(context3, attributeSet, iArr, i4, R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        fVar2.f12008H0 = d4.hasValue(37);
        ColorStateList a5 = A2.d.a(fVar2.f12033g0, d4, 24);
        if (fVar2.f11997C != a5) {
            fVar2.f11997C = a5;
            fVar2.onStateChange(fVar2.getState());
        }
        ColorStateList a6 = A2.d.a(fVar2.f12033g0, d4, 11);
        if (fVar2.f11999D != a6) {
            fVar2.f11999D = a6;
            fVar2.onStateChange(fVar2.getState());
        }
        float dimension = d4.getDimension(19, 0.0f);
        if (fVar2.f12001E != dimension) {
            fVar2.f12001E = dimension;
            fVar2.invalidateSelf();
            fVar2.w();
        }
        if (d4.hasValue(12)) {
            float dimension2 = d4.getDimension(12, 0.0f);
            if (fVar2.f12003F != dimension2) {
                fVar2.f12003F = dimension2;
                n nVar = fVar2.f160d.f137a;
                nVar.getClass();
                m mVar = new m(nVar);
                mVar.f189e = new C2.a(dimension2);
                mVar.f190f = new C2.a(dimension2);
                mVar.f191g = new C2.a(dimension2);
                mVar.f192h = new C2.a(dimension2);
                fVar2.b(new n(mVar));
            }
        }
        ColorStateList a7 = A2.d.a(fVar2.f12033g0, d4, 22);
        if (fVar2.f12005G != a7) {
            fVar2.f12005G = a7;
            if (fVar2.f12008H0) {
                C2.h hVar = fVar2.f160d;
                if (hVar.f140d != a7) {
                    hVar.f140d = a7;
                    fVar2.onStateChange(fVar2.getState());
                }
            }
            fVar2.onStateChange(fVar2.getState());
        }
        float dimension3 = d4.getDimension(23, 0.0f);
        if (fVar2.f12007H != dimension3) {
            fVar2.f12007H = dimension3;
            fVar2.f12034h0.setStrokeWidth(dimension3);
            if (fVar2.f12008H0) {
                fVar2.f160d.f147k = dimension3;
                fVar2.invalidateSelf();
            }
            fVar2.invalidateSelf();
        }
        ColorStateList a8 = A2.d.a(fVar2.f12033g0, d4, 36);
        if (fVar2.f12009I != a8) {
            fVar2.f12009I = a8;
            if (fVar2.f11996B0) {
                int i5 = a.f8061a;
                if (a8 == null) {
                    a8 = ColorStateList.valueOf(0);
                }
            } else {
                a8 = null;
            }
            fVar2.f11998C0 = a8;
            fVar2.onStateChange(fVar2.getState());
        }
        String text = d4.getText(5);
        text = text == null ? "" : text;
        if (!TextUtils.equals(fVar2.f12010J, text)) {
            fVar2.f12010J = text;
            fVar2.f12039m0.f12879d = true;
            fVar2.invalidateSelf();
            fVar2.w();
        }
        g gVar = (!d4.hasValue(0) || (resourceId3 = d4.getResourceId(0, 0)) == 0) ? null : new g(resourceId3, fVar2.f12033g0);
        gVar.f100k = d4.getDimension(1, gVar.f100k);
        fVar2.B(gVar);
        int i6 = d4.getInt(3, 0);
        if (i6 == 1) {
            fVar2.f12002E0 = TextUtils.TruncateAt.START;
        } else if (i6 == 2) {
            fVar2.f12002E0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i6 == 3) {
            fVar2.f12002E0 = TextUtils.TruncateAt.END;
        }
        fVar2.z(d4.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            fVar2.z(d4.getBoolean(15, false));
        }
        Drawable c4 = A2.d.c(fVar2.f12033g0, d4, 14);
        Drawable drawable = fVar2.f12012L;
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof c) {
            drawable = ((c) drawable).b();
        }
        if (drawable != c4) {
            float r4 = fVar2.r();
            fVar2.f12012L = c4 != null ? c4.mutate() : null;
            float r5 = fVar2.r();
            f.F(drawable);
            if (fVar2.D()) {
                fVar2.p(fVar2.f12012L);
            }
            fVar2.invalidateSelf();
            if (r4 != r5) {
                fVar2.w();
            }
        }
        if (d4.hasValue(17)) {
            ColorStateList a9 = A2.d.a(fVar2.f12033g0, d4, 17);
            fVar2.f12015O = true;
            if (fVar2.f12013M != a9) {
                fVar2.f12013M = a9;
                if (fVar2.D()) {
                    fVar2.f12012L.setTintList(a9);
                }
                fVar2.onStateChange(fVar2.getState());
            }
        }
        float dimension4 = d4.getDimension(16, -1.0f);
        if (fVar2.f12014N != dimension4) {
            float r6 = fVar2.r();
            fVar2.f12014N = dimension4;
            float r7 = fVar2.r();
            fVar2.invalidateSelf();
            if (r6 != r7) {
                fVar2.w();
            }
        }
        fVar2.A(d4.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            fVar2.A(d4.getBoolean(26, false));
        }
        Drawable c5 = A2.d.c(fVar2.f12033g0, d4, 25);
        Drawable drawable2 = fVar2.f12017Q;
        if (drawable2 == null) {
            drawable2 = null;
        } else if (drawable2 instanceof c) {
            drawable2 = ((c) drawable2).b();
        }
        if (drawable2 != c5) {
            float s4 = fVar2.s();
            fVar2.f12017Q = c5 != null ? c5.mutate() : null;
            int i7 = a.f8061a;
            ColorStateList colorStateList = fVar2.f12009I;
            fVar2.f12018R = new RippleDrawable(colorStateList == null ? ColorStateList.valueOf(0) : colorStateList, fVar2.f12017Q, f.f11994J0);
            float s5 = fVar2.s();
            f.F(drawable2);
            if (fVar2.E()) {
                fVar2.p(fVar2.f12017Q);
            }
            fVar2.invalidateSelf();
            if (s4 != s5) {
                fVar2.w();
            }
        }
        ColorStateList a10 = A2.d.a(fVar2.f12033g0, d4, 30);
        if (fVar2.f12019S != a10) {
            fVar2.f12019S = a10;
            if (fVar2.E()) {
                fVar2.f12017Q.setTintList(a10);
            }
            fVar2.onStateChange(fVar2.getState());
        }
        float dimension5 = d4.getDimension(28, 0.0f);
        if (fVar2.f12020T != dimension5) {
            fVar2.f12020T = dimension5;
            fVar2.invalidateSelf();
            if (fVar2.E()) {
                fVar2.w();
            }
        }
        boolean z4 = d4.getBoolean(6, false);
        if (fVar2.f12021U != z4) {
            fVar2.f12021U = z4;
            float r8 = fVar2.r();
            if (!z4 && fVar2.f12046t0) {
                fVar2.f12046t0 = false;
            }
            float r9 = fVar2.r();
            fVar2.invalidateSelf();
            if (r8 != r9) {
                fVar2.w();
            }
        }
        fVar2.y(d4.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            fVar2.y(d4.getBoolean(8, false));
        }
        Drawable c6 = A2.d.c(fVar2.f12033g0, d4, 7);
        if (fVar2.f12023W != c6) {
            float r10 = fVar2.r();
            fVar2.f12023W = c6;
            float r11 = fVar2.r();
            f.F(fVar2.f12023W);
            fVar2.p(fVar2.f12023W);
            fVar2.invalidateSelf();
            if (r10 != r11) {
                fVar2.w();
            }
        }
        if (d4.hasValue(9) && fVar2.f12024X != (a4 = A2.d.a(fVar2.f12033g0, d4, 9))) {
            fVar2.f12024X = a4;
            if (fVar2.f12022V && fVar2.f12023W != null && fVar2.f12021U) {
                fVar2.f12023W.setTintList(a4);
            }
            fVar2.onStateChange(fVar2.getState());
        }
        Context context4 = fVar2.f12033g0;
        if (d4.hasValue(39) && (resourceId2 = d4.getResourceId(39, 0)) != 0) {
            j2.g.a(resourceId2, context4);
        }
        Context context5 = fVar2.f12033g0;
        if (d4.hasValue(33) && (resourceId = d4.getResourceId(33, 0)) != 0) {
            j2.g.a(resourceId, context5);
        }
        float dimension6 = d4.getDimension(21, 0.0f);
        if (fVar2.f12025Y != dimension6) {
            fVar2.f12025Y = dimension6;
            fVar2.invalidateSelf();
            fVar2.w();
        }
        float dimension7 = d4.getDimension(35, 0.0f);
        if (fVar2.f12026Z != dimension7) {
            float r12 = fVar2.r();
            fVar2.f12026Z = dimension7;
            float r13 = fVar2.r();
            fVar2.invalidateSelf();
            if (r12 != r13) {
                fVar2.w();
            }
        }
        float dimension8 = d4.getDimension(34, 0.0f);
        if (fVar2.f12027a0 != dimension8) {
            float r14 = fVar2.r();
            fVar2.f12027a0 = dimension8;
            float r15 = fVar2.r();
            fVar2.invalidateSelf();
            if (r14 != r15) {
                fVar2.w();
            }
        }
        float dimension9 = d4.getDimension(41, 0.0f);
        if (fVar2.f12028b0 != dimension9) {
            fVar2.f12028b0 = dimension9;
            fVar2.invalidateSelf();
            fVar2.w();
        }
        float dimension10 = d4.getDimension(40, 0.0f);
        if (fVar2.f12029c0 != dimension10) {
            fVar2.f12029c0 = dimension10;
            fVar2.invalidateSelf();
            fVar2.w();
        }
        float dimension11 = d4.getDimension(29, 0.0f);
        if (fVar2.f12030d0 != dimension11) {
            fVar2.f12030d0 = dimension11;
            fVar2.invalidateSelf();
            if (fVar2.E()) {
                fVar2.w();
            }
        }
        float dimension12 = d4.getDimension(27, 0.0f);
        if (fVar2.f12031e0 != dimension12) {
            fVar2.f12031e0 = dimension12;
            fVar2.invalidateSelf();
            if (fVar2.E()) {
                fVar2.w();
            }
        }
        float dimension13 = d4.getDimension(13, 0.0f);
        if (fVar2.f12032f0 != dimension13) {
            fVar2.f12032f0 = dimension13;
            fVar2.invalidateSelf();
            fVar2.w();
        }
        fVar2.f12006G0 = d4.getDimensionPixelSize(4, Integer.MAX_VALUE);
        d4.recycle();
        TypedArray d5 = C1480r.d(context2, attributeSet, iArr, i4, R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        this.f7841p = d5.getBoolean(32, false);
        this.f7843r = (int) Math.ceil(d5.getDimension(20, (float) Math.ceil(TypedValue.applyDimension(1, 48, getContext().getResources().getDisplayMetrics()))));
        d5.recycle();
        f fVar3 = this.f7833h;
        if (fVar3 != fVar2) {
            if (fVar3 != null) {
                fVar3.f12000D0 = new WeakReference(null);
            }
            this.f7833h = fVar2;
            fVar2.f12004F0 = false;
            fVar2.f12000D0 = new WeakReference(this);
            c(this.f7843r);
        }
        WeakHashMap weakHashMap = J.f3079a;
        fVar2.k(D.d(this));
        TypedArray d6 = C1480r.d(context2, attributeSet, iArr, i4, R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        boolean hasValue = d6.hasValue(37);
        d6.recycle();
        new q2.d(this, this);
        if (e() && (fVar = this.f7833h) != null) {
            boolean z5 = fVar.f12016P;
        }
        J.h(this, null);
        if (!hasValue) {
            setOutlineProvider(new q2.c(this));
        }
        setChecked(this.f7837l);
        setText(fVar2.f12010J);
        setEllipsize(fVar2.f12002E0);
        h();
        if (!this.f7833h.f12004F0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        g();
        if (this.f7841p) {
            setMinHeight(this.f7843r);
        }
        this.f7842q = C0187y.c(this);
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: q2.a
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = Chip.this.f7836k;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z6);
                }
            }
        });
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(int i4) {
        super.setTextAppearance(i4);
        f fVar = this.f7833h;
        if (fVar != null) {
            fVar.B(new g(i4, fVar.f12033g0));
        }
        h();
    }
}
