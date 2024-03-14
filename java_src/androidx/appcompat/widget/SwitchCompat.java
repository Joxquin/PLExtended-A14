package androidx.appcompat.widget;

import B.c;
import N.i;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.core.view.A;
import androidx.core.view.C0182t;
import androidx.core.view.H;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import d.C0792a;
import h.C0962a;
import java.util.WeakHashMap;
import k.C1121E;
import k.C1134e0;
import k.C1154o0;
import k.L0;
import k.M0;
import k.R0;
import k.c1;
/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {

    /* renamed from: T  reason: collision with root package name */
    public static final L0 f2597T = new L0();

    /* renamed from: U  reason: collision with root package name */
    public static final int[] f2598U = {16842912};

    /* renamed from: A  reason: collision with root package name */
    public final VelocityTracker f2599A;

    /* renamed from: B  reason: collision with root package name */
    public final int f2600B;

    /* renamed from: C  reason: collision with root package name */
    public float f2601C;

    /* renamed from: D  reason: collision with root package name */
    public int f2602D;

    /* renamed from: E  reason: collision with root package name */
    public int f2603E;

    /* renamed from: F  reason: collision with root package name */
    public int f2604F;

    /* renamed from: G  reason: collision with root package name */
    public int f2605G;

    /* renamed from: H  reason: collision with root package name */
    public int f2606H;

    /* renamed from: I  reason: collision with root package name */
    public int f2607I;

    /* renamed from: J  reason: collision with root package name */
    public int f2608J;

    /* renamed from: K  reason: collision with root package name */
    public final boolean f2609K;

    /* renamed from: L  reason: collision with root package name */
    public final TextPaint f2610L;

    /* renamed from: M  reason: collision with root package name */
    public ColorStateList f2611M;

    /* renamed from: N  reason: collision with root package name */
    public Layout f2612N;

    /* renamed from: O  reason: collision with root package name */
    public Layout f2613O;

    /* renamed from: P  reason: collision with root package name */
    public C0962a f2614P;

    /* renamed from: Q  reason: collision with root package name */
    public ObjectAnimator f2615Q;

    /* renamed from: R  reason: collision with root package name */
    public C1121E f2616R;

    /* renamed from: S  reason: collision with root package name */
    public final Rect f2617S;

    /* renamed from: d  reason: collision with root package name */
    public Drawable f2618d;

    /* renamed from: e  reason: collision with root package name */
    public final ColorStateList f2619e;

    /* renamed from: f  reason: collision with root package name */
    public final PorterDuff.Mode f2620f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f2621g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f2622h;

    /* renamed from: i  reason: collision with root package name */
    public Drawable f2623i;

    /* renamed from: j  reason: collision with root package name */
    public final ColorStateList f2624j;

    /* renamed from: k  reason: collision with root package name */
    public final PorterDuff.Mode f2625k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f2626l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f2627m;

    /* renamed from: n  reason: collision with root package name */
    public final int f2628n;

    /* renamed from: o  reason: collision with root package name */
    public final int f2629o;

    /* renamed from: p  reason: collision with root package name */
    public final int f2630p;

    /* renamed from: q  reason: collision with root package name */
    public final boolean f2631q;

    /* renamed from: r  reason: collision with root package name */
    public CharSequence f2632r;

    /* renamed from: s  reason: collision with root package name */
    public CharSequence f2633s;

    /* renamed from: t  reason: collision with root package name */
    public CharSequence f2634t;

    /* renamed from: u  reason: collision with root package name */
    public CharSequence f2635u;

    /* renamed from: v  reason: collision with root package name */
    public final boolean f2636v;

    /* renamed from: w  reason: collision with root package name */
    public int f2637w;

    /* renamed from: x  reason: collision with root package name */
    public final int f2638x;

    /* renamed from: y  reason: collision with root package name */
    public float f2639y;

    /* renamed from: z  reason: collision with root package name */
    public float f2640z;

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public final C1121E a() {
        if (this.f2616R == null) {
            this.f2616R = new C1121E(this);
        }
        return this.f2616R;
    }

    public final int b() {
        Drawable drawable = this.f2623i;
        if (drawable != null) {
            Rect rect = this.f2617S;
            drawable.getPadding(rect);
            Drawable drawable2 = this.f2618d;
            Rect a4 = drawable2 != null ? C1154o0.a(drawable2) : C1154o0.f10945a;
            return ((((this.f2602D - this.f2604F) - rect.left) - rect.right) - a4.left) - a4.right;
        }
        return 0;
    }

    public final Layout c(CharSequence charSequence) {
        TextPaint textPaint = this.f2610L;
        return new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    public final void d(Typeface typeface) {
        if ((this.f2610L.getTypeface() == null || this.f2610L.getTypeface().equals(typeface)) && (this.f2610L.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f2610L.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i4;
        int i5;
        Rect rect = this.f2617S;
        int i6 = this.f2605G;
        int i7 = this.f2606H;
        int i8 = this.f2607I;
        int i9 = this.f2608J;
        int b4 = ((int) (((c1.a(this) ? 1.0f - this.f2601C : this.f2601C) * b()) + 0.5f)) + i6;
        Drawable drawable = this.f2618d;
        Rect a4 = drawable != null ? C1154o0.a(drawable) : C1154o0.f10945a;
        Drawable drawable2 = this.f2623i;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i10 = rect.left;
            b4 += i10;
            if (a4 != null) {
                int i11 = a4.left;
                if (i11 > i10) {
                    i6 += i11 - i10;
                }
                int i12 = a4.top;
                int i13 = rect.top;
                i4 = i12 > i13 ? (i12 - i13) + i7 : i7;
                int i14 = a4.right;
                int i15 = rect.right;
                if (i14 > i15) {
                    i8 -= i14 - i15;
                }
                int i16 = a4.bottom;
                int i17 = rect.bottom;
                if (i16 > i17) {
                    i5 = i9 - (i16 - i17);
                    this.f2623i.setBounds(i6, i4, i8, i5);
                }
            } else {
                i4 = i7;
            }
            i5 = i9;
            this.f2623i.setBounds(i6, i4, i8, i5);
        }
        Drawable drawable3 = this.f2618d;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i18 = b4 - rect.left;
            int i19 = b4 + this.f2604F + rect.right;
            this.f2618d.setBounds(i18, i7, i19, i9);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i18, i7, i19, i9);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f4, float f5) {
        super.drawableHotspotChanged(f4, f5);
        Drawable drawable = this.f2618d;
        if (drawable != null) {
            drawable.setHotspot(f4, f5);
        }
        Drawable drawable2 = this.f2623i;
        if (drawable2 != null) {
            drawable2.setHotspot(f4, f5);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f2618d;
        boolean z4 = false;
        if (drawable != null && drawable.isStateful()) {
            z4 = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f2623i;
        if (drawable2 != null && drawable2.isStateful()) {
            z4 |= drawable2.setState(drawableState);
        }
        if (z4) {
            invalidate();
        }
    }

    public final void e(CharSequence charSequence) {
        this.f2634t = charSequence;
        C1121E a4 = a();
        TransformationMethod e4 = a4.f10756b.f1630a.e(this.f2614P);
        if (e4 != null) {
            charSequence = e4.getTransformation(charSequence, this);
        }
        this.f2635u = charSequence;
        this.f2613O = null;
        if (this.f2636v && this.f2616R.f10756b.f1630a.b()) {
            Object obj = androidx.emoji2.text.b.f3224a;
        }
    }

    public final void f(CharSequence charSequence) {
        this.f2632r = charSequence;
        C1121E a4 = a();
        TransformationMethod e4 = a4.f10756b.f1630a.e(this.f2614P);
        if (e4 != null) {
            charSequence = e4.getTransformation(charSequence, this);
        }
        this.f2633s = charSequence;
        this.f2612N = null;
        if (this.f2636v && this.f2616R.f10756b.f1630a.b()) {
            Object obj = androidx.emoji2.text.b.f3224a;
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingLeft() {
        if (c1.a(this)) {
            int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f2602D;
            return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f2630p : compoundPaddingLeft;
        }
        return super.getCompoundPaddingLeft();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingRight() {
        if (c1.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f2602D;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f2630p : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return i.b(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f2618d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f2623i;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f2615Q;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f2615Q.end();
        this.f2615Q = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, f2598U);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.f2617S;
        Drawable drawable = this.f2623i;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i4 = this.f2606H;
        int i5 = this.f2608J;
        int i6 = i4 + rect.top;
        int i7 = i5 - rect.bottom;
        Drawable drawable2 = this.f2618d;
        if (drawable != null) {
            if (!this.f2631q || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect a4 = C1154o0.a(drawable2);
                drawable2.copyBounds(rect);
                rect.left += a4.left;
                rect.right -= a4.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = (this.f2601C > 0.5f ? 1 : (this.f2601C == 0.5f ? 0 : -1)) > 0 ? this.f2612N : this.f2613O;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f2611M;
            if (colorStateList != null) {
                this.f2610L.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f2610L.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i6 + i7) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int i8;
        int width;
        int i9;
        int i10;
        int i11;
        super.onLayout(z4, i4, i5, i6, i7);
        int i12 = 0;
        if (this.f2618d != null) {
            Rect rect = this.f2617S;
            Drawable drawable = this.f2623i;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect a4 = C1154o0.a(this.f2618d);
            i8 = Math.max(0, a4.left - rect.left);
            i12 = Math.max(0, a4.right - rect.right);
        } else {
            i8 = 0;
        }
        if (c1.a(this)) {
            i9 = getPaddingLeft() + i8;
            width = ((this.f2602D + i9) - i8) - i12;
        } else {
            width = (getWidth() - getPaddingRight()) - i12;
            i9 = (width - this.f2602D) + i8 + i12;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop = getPaddingTop();
            int i13 = this.f2603E;
            int height = (((getHeight() + paddingTop) - getPaddingBottom()) / 2) - (i13 / 2);
            i10 = i13 + height;
            i11 = height;
        } else if (gravity != 80) {
            i11 = getPaddingTop();
            i10 = this.f2603E + i11;
        } else {
            i10 = getHeight() - getPaddingBottom();
            i11 = i10 - this.f2603E;
        }
        this.f2605G = i9;
        this.f2606H = i11;
        this.f2608J = i10;
        this.f2607I = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i4, int i5) {
        int i6;
        int i7;
        if (this.f2636v) {
            if (this.f2612N == null) {
                this.f2612N = c(this.f2633s);
            }
            if (this.f2613O == null) {
                this.f2613O = c(this.f2635u);
            }
        }
        Rect rect = this.f2617S;
        Drawable drawable = this.f2618d;
        int i8 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i6 = (this.f2618d.getIntrinsicWidth() - rect.left) - rect.right;
            i7 = this.f2618d.getIntrinsicHeight();
        } else {
            i6 = 0;
            i7 = 0;
        }
        this.f2604F = Math.max(this.f2636v ? (this.f2628n * 2) + Math.max(this.f2612N.getWidth(), this.f2613O.getWidth()) : 0, i6);
        Drawable drawable2 = this.f2623i;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i8 = this.f2623i.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i9 = rect.left;
        int i10 = rect.right;
        Drawable drawable3 = this.f2618d;
        if (drawable3 != null) {
            Rect a4 = C1154o0.a(drawable3);
            i9 = Math.max(i9, a4.left);
            i10 = Math.max(i10, a4.right);
        }
        int max = this.f2609K ? Math.max(this.f2629o, (this.f2604F * 2) + i9 + i10) : this.f2629o;
        int max2 = Math.max(i8, i7);
        this.f2602D = max;
        this.f2603E = max2;
        super.onMeasure(i4, i5);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f2632r : this.f2634t;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r0 != 3) goto L7;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        a().c(z4);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void setChecked(boolean z4) {
        super.setChecked(z4);
        boolean isChecked = isChecked();
        if (isChecked) {
            Object obj = this.f2632r;
            if (obj == null) {
                obj = getResources().getString(R.string.abc_capital_on);
            }
            WeakHashMap weakHashMap = J.f3079a;
            new C0182t(R.id.tag_state_description, CharSequence.class, 64, 30, 2).c(this, obj);
        } else {
            Object obj2 = this.f2634t;
            if (obj2 == null) {
                obj2 = getResources().getString(R.string.abc_capital_off);
            }
            WeakHashMap weakHashMap2 = J.f3079a;
            new C0182t(R.id.tag_state_description, CharSequence.class, 64, 30, 2).c(this, obj2);
        }
        if (getWindowToken() == null || !A.c(this)) {
            ObjectAnimator objectAnimator = this.f2615Q;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            this.f2601C = isChecked ? 1.0f : 0.0f;
            invalidate();
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f2597T, isChecked ? 1.0f : 0.0f);
        this.f2615Q = ofFloat;
        ofFloat.setDuration(250L);
        this.f2615Q.setAutoCancel(true);
        this.f2615Q.start();
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(a().a(inputFilterArr));
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2618d || drawable == this.f2623i;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Drawable drawable;
        Drawable drawable2;
        Typeface typeface;
        Typeface create;
        int resourceId;
        this.f2619e = null;
        this.f2620f = null;
        this.f2621g = false;
        this.f2622h = false;
        this.f2624j = null;
        this.f2625k = null;
        this.f2626l = false;
        this.f2627m = false;
        this.f2599A = VelocityTracker.obtain();
        this.f2609K = true;
        this.f2617S = new Rect();
        M0.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f2610L = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = C0792a.f8752v;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i4, 0);
        R0 r02 = new R0(context, obtainStyledAttributes);
        WeakHashMap weakHashMap = J.f3079a;
        H.b(this, context, iArr, attributeSet, obtainStyledAttributes, i4, 0);
        Drawable e4 = r02.e(2);
        this.f2618d = e4;
        if (e4 != null) {
            e4.setCallback(this);
        }
        Drawable e5 = r02.e(11);
        this.f2623i = e5;
        if (e5 != null) {
            e5.setCallback(this);
        }
        f(r02.k(0));
        e(r02.k(1));
        this.f2636v = r02.a(3, true);
        this.f2628n = r02.d(8, 0);
        this.f2629o = r02.d(5, 0);
        this.f2630p = r02.d(6, 0);
        this.f2631q = r02.a(4, false);
        ColorStateList b4 = r02.b(9);
        if (b4 != null) {
            this.f2619e = b4;
            this.f2621g = true;
        }
        PorterDuff.Mode b5 = C1154o0.b(r02.h(10, -1), null);
        if (b5 != null) {
            this.f2620f = b5;
            this.f2622h = true;
        }
        boolean z4 = this.f2621g;
        if ((z4 || this.f2622h) && (drawable = this.f2618d) != null && (z4 || this.f2622h)) {
            Drawable mutate = drawable.mutate();
            this.f2618d = mutate;
            if (this.f2621g) {
                mutate.setTintList(this.f2619e);
            }
            if (this.f2622h) {
                this.f2618d.setTintMode(this.f2620f);
            }
            if (this.f2618d.isStateful()) {
                this.f2618d.setState(getDrawableState());
            }
        }
        ColorStateList b6 = r02.b(12);
        if (b6 != null) {
            this.f2624j = b6;
            this.f2626l = true;
        }
        PorterDuff.Mode b7 = C1154o0.b(r02.h(13, -1), null);
        if (b7 != null) {
            this.f2625k = b7;
            this.f2627m = true;
        }
        boolean z5 = this.f2626l;
        if ((z5 || this.f2627m) && (drawable2 = this.f2623i) != null && (z5 || this.f2627m)) {
            Drawable mutate2 = drawable2.mutate();
            this.f2623i = mutate2;
            if (this.f2626l) {
                mutate2.setTintList(this.f2624j);
            }
            if (this.f2627m) {
                this.f2623i.setTintMode(this.f2625k);
            }
            if (this.f2623i.isStateful()) {
                this.f2623i.setState(getDrawableState());
            }
        }
        int i5 = r02.i(7, 0);
        if (i5 != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i5, C0792a.f8753w);
            ColorStateList colorStateList = (!obtainStyledAttributes2.hasValue(3) || (resourceId = obtainStyledAttributes2.getResourceId(3, 0)) == 0 || (colorStateList = c.a(resourceId, context)) == null) ? obtainStyledAttributes2.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.f2611M = colorStateList;
            } else {
                this.f2611M = getTextColors();
            }
            int dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f4 = dimensionPixelSize;
                if (f4 != textPaint.getTextSize()) {
                    textPaint.setTextSize(f4);
                    requestLayout();
                }
            }
            int i6 = obtainStyledAttributes2.getInt(1, -1);
            int i7 = obtainStyledAttributes2.getInt(2, -1);
            if (i6 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i6 != 2) {
                typeface = i6 != 3 ? null : Typeface.MONOSPACE;
            } else {
                typeface = Typeface.SERIF;
            }
            if (i7 > 0) {
                if (typeface == null) {
                    create = Typeface.defaultFromStyle(i7);
                } else {
                    create = Typeface.create(typeface, i7);
                }
                d(create);
                int i8 = (~(create != null ? create.getStyle() : 0)) & i7;
                textPaint.setFakeBoldText((i8 & 1) != 0);
                textPaint.setTextSkewX((i8 & 2) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                d(typeface);
            }
            if (obtainStyledAttributes2.getBoolean(14, false)) {
                this.f2614P = new C0962a(getContext());
            } else {
                this.f2614P = null;
            }
            f(this.f2632r);
            e(this.f2634t);
            obtainStyledAttributes2.recycle();
        }
        new C1134e0(this).d(attributeSet, i4);
        r02.n();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2638x = viewConfiguration.getScaledTouchSlop();
        this.f2600B = viewConfiguration.getScaledMinimumFlingVelocity();
        a().b(attributeSet, i4);
        refreshDrawableState();
        setChecked(isChecked());
    }
}
