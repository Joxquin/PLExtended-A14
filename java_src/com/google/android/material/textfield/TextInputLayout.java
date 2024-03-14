package com.google.android.material.textfield;

import A2.c;
import A2.d;
import C2.h;
import C2.i;
import C2.m;
import C2.n;
import F2.A;
import F2.C0009h;
import F2.D;
import F2.H;
import F2.I;
import F2.K;
import F2.L;
import F2.M;
import F2.P;
import F2.q;
import F2.v;
import F2.x;
import F2.z;
import K.b;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.F;
import androidx.core.view.J;
import androidx.core.view.ViewCompat$$ExternalSyntheticLambda0;
import com.android.systemui.shared.R;
import com.google.android.material.internal.a;
import g0.C0931B;
import g0.C0939h;
import i2.C0980a;
import j2.C1114a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import k.C1117A;
import k.C1154o0;
import k.R0;
import s2.C1394a;
import v.C1429e;
import x2.C1467e;
import x2.C1480r;
import x2.C1485w;
/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {

    /* renamed from: A0  reason: collision with root package name */
    public static final int[][] f8066A0 = {new int[]{16842919}, new int[0]};

    /* renamed from: A  reason: collision with root package name */
    public C0939h f8067A;

    /* renamed from: B  reason: collision with root package name */
    public ColorStateList f8068B;

    /* renamed from: C  reason: collision with root package name */
    public ColorStateList f8069C;

    /* renamed from: D  reason: collision with root package name */
    public final boolean f8070D;

    /* renamed from: E  reason: collision with root package name */
    public CharSequence f8071E;

    /* renamed from: F  reason: collision with root package name */
    public boolean f8072F;

    /* renamed from: G  reason: collision with root package name */
    public i f8073G;

    /* renamed from: H  reason: collision with root package name */
    public i f8074H;

    /* renamed from: I  reason: collision with root package name */
    public StateListDrawable f8075I;

    /* renamed from: J  reason: collision with root package name */
    public boolean f8076J;

    /* renamed from: K  reason: collision with root package name */
    public i f8077K;

    /* renamed from: L  reason: collision with root package name */
    public i f8078L;

    /* renamed from: M  reason: collision with root package name */
    public n f8079M;

    /* renamed from: N  reason: collision with root package name */
    public boolean f8080N;

    /* renamed from: O  reason: collision with root package name */
    public final int f8081O;

    /* renamed from: P  reason: collision with root package name */
    public int f8082P;

    /* renamed from: Q  reason: collision with root package name */
    public int f8083Q;

    /* renamed from: R  reason: collision with root package name */
    public int f8084R;

    /* renamed from: S  reason: collision with root package name */
    public final int f8085S;

    /* renamed from: T  reason: collision with root package name */
    public final int f8086T;

    /* renamed from: U  reason: collision with root package name */
    public int f8087U;

    /* renamed from: V  reason: collision with root package name */
    public int f8088V;

    /* renamed from: W  reason: collision with root package name */
    public final Rect f8089W;

    /* renamed from: a0  reason: collision with root package name */
    public final Rect f8090a0;

    /* renamed from: b0  reason: collision with root package name */
    public final RectF f8091b0;

    /* renamed from: c0  reason: collision with root package name */
    public Drawable f8092c0;

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f8093d;

    /* renamed from: d0  reason: collision with root package name */
    public int f8094d0;

    /* renamed from: e  reason: collision with root package name */
    public final H f8095e;

    /* renamed from: e0  reason: collision with root package name */
    public final LinkedHashSet f8096e0;

    /* renamed from: f  reason: collision with root package name */
    public final v f8097f;

    /* renamed from: f0  reason: collision with root package name */
    public Drawable f8098f0;

    /* renamed from: g  reason: collision with root package name */
    public EditText f8099g;

    /* renamed from: g0  reason: collision with root package name */
    public int f8100g0;

    /* renamed from: h  reason: collision with root package name */
    public CharSequence f8101h;

    /* renamed from: h0  reason: collision with root package name */
    public Drawable f8102h0;

    /* renamed from: i  reason: collision with root package name */
    public int f8103i;

    /* renamed from: i0  reason: collision with root package name */
    public ColorStateList f8104i0;

    /* renamed from: j  reason: collision with root package name */
    public int f8105j;

    /* renamed from: j0  reason: collision with root package name */
    public ColorStateList f8106j0;

    /* renamed from: k  reason: collision with root package name */
    public int f8107k;

    /* renamed from: k0  reason: collision with root package name */
    public int f8108k0;

    /* renamed from: l  reason: collision with root package name */
    public int f8109l;

    /* renamed from: l0  reason: collision with root package name */
    public int f8110l0;

    /* renamed from: m  reason: collision with root package name */
    public final A f8111m;

    /* renamed from: m0  reason: collision with root package name */
    public int f8112m0;

    /* renamed from: n  reason: collision with root package name */
    public boolean f8113n;

    /* renamed from: n0  reason: collision with root package name */
    public ColorStateList f8114n0;

    /* renamed from: o  reason: collision with root package name */
    public int f8115o;

    /* renamed from: o0  reason: collision with root package name */
    public final int f8116o0;

    /* renamed from: p  reason: collision with root package name */
    public boolean f8117p;

    /* renamed from: p0  reason: collision with root package name */
    public final int f8118p0;

    /* renamed from: q  reason: collision with root package name */
    public final ViewCompat$$ExternalSyntheticLambda0 f8119q;

    /* renamed from: q0  reason: collision with root package name */
    public final int f8120q0;

    /* renamed from: r  reason: collision with root package name */
    public AppCompatTextView f8121r;

    /* renamed from: r0  reason: collision with root package name */
    public final int f8122r0;

    /* renamed from: s  reason: collision with root package name */
    public int f8123s;

    /* renamed from: s0  reason: collision with root package name */
    public int f8124s0;

    /* renamed from: t  reason: collision with root package name */
    public int f8125t;

    /* renamed from: t0  reason: collision with root package name */
    public boolean f8126t0;

    /* renamed from: u  reason: collision with root package name */
    public CharSequence f8127u;

    /* renamed from: u0  reason: collision with root package name */
    public final a f8128u0;

    /* renamed from: v  reason: collision with root package name */
    public boolean f8129v;

    /* renamed from: v0  reason: collision with root package name */
    public final boolean f8130v0;

    /* renamed from: w  reason: collision with root package name */
    public AppCompatTextView f8131w;

    /* renamed from: w0  reason: collision with root package name */
    public final boolean f8132w0;

    /* renamed from: x  reason: collision with root package name */
    public ColorStateList f8133x;

    /* renamed from: x0  reason: collision with root package name */
    public ValueAnimator f8134x0;

    /* renamed from: y  reason: collision with root package name */
    public int f8135y;

    /* renamed from: y0  reason: collision with root package name */
    public boolean f8136y0;

    /* renamed from: z  reason: collision with root package name */
    public C0939h f8137z;

    /* renamed from: z0  reason: collision with root package name */
    public boolean f8138z0;

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public static void i(ViewGroup viewGroup, boolean z4) {
        int childCount = viewGroup.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = viewGroup.getChildAt(i4);
            childAt.setEnabled(z4);
            if (childAt instanceof ViewGroup) {
                i((ViewGroup) childAt, z4);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r7 = this;
            C2.i r0 = r7.f8073G
            if (r0 != 0) goto L5
            return
        L5:
            C2.h r1 = r0.f160d
            C2.n r1 = r1.f137a
            C2.n r2 = r7.f8079M
            if (r1 == r2) goto L10
            r0.b(r2)
        L10:
            int r0 = r7.f8082P
            r1 = 2
            r2 = -1
            r3 = 0
            r4 = 1
            if (r0 != r1) goto L27
            int r0 = r7.f8084R
            if (r0 <= r2) goto L22
            int r0 = r7.f8087U
            if (r0 == 0) goto L22
            r0 = r4
            goto L23
        L22:
            r0 = r3
        L23:
            if (r0 == 0) goto L27
            r0 = r4
            goto L28
        L27:
            r0 = r3
        L28:
            if (r0 == 0) goto L4b
            C2.i r0 = r7.f8073G
            int r1 = r7.f8084R
            float r1 = (float) r1
            int r5 = r7.f8087U
            C2.h r6 = r0.f160d
            r6.f147k = r1
            r0.invalidateSelf()
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r5)
            C2.h r5 = r0.f160d
            android.content.res.ColorStateList r6 = r5.f140d
            if (r6 == r1) goto L4b
            r5.f140d = r1
            int[] r1 = r0.getState()
            r0.onStateChange(r1)
        L4b:
            int r0 = r7.f8088V
            int r1 = r7.f8082P
            if (r1 != r4) goto L62
            android.content.Context r0 = r7.getContext()
            r1 = 2130968902(0x7f040146, float:1.754647E38)
            int r0 = s2.C1394a.a(r0, r1, r3)
            int r1 = r7.f8088V
            int r0 = E.a.h(r1, r0)
        L62:
            r7.f8088V = r0
            C2.i r1 = r7.f8073G
            android.content.res.ColorStateList r0 = android.content.res.ColorStateList.valueOf(r0)
            r1.l(r0)
            C2.i r0 = r7.f8077K
            if (r0 == 0) goto La7
            C2.i r1 = r7.f8078L
            if (r1 != 0) goto L76
            goto La7
        L76:
            int r1 = r7.f8084R
            if (r1 <= r2) goto L7f
            int r1 = r7.f8087U
            if (r1 == 0) goto L7f
            r3 = r4
        L7f:
            if (r3 == 0) goto La4
            android.widget.EditText r1 = r7.f8099g
            boolean r1 = r1.isFocused()
            if (r1 == 0) goto L90
            int r1 = r7.f8108k0
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
            goto L96
        L90:
            int r1 = r7.f8087U
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
        L96:
            r0.l(r1)
            C2.i r0 = r7.f8078L
            int r1 = r7.f8087U
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
            r0.l(r1)
        La4:
            r7.invalidate()
        La7:
            r7.t()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.a():void");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i4, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f8093d.addView(view, layoutParams2);
        this.f8093d.setLayoutParams(layoutParams);
        u();
        EditText editText = (EditText) view;
        if (this.f8099g != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.f8097f.f484k != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f8099g = editText;
        int i5 = this.f8103i;
        if (i5 != -1) {
            this.f8103i = i5;
            if (editText != null && i5 != -1) {
                editText.setMinEms(i5);
            }
        } else {
            int i6 = this.f8107k;
            this.f8107k = i6;
            if (editText != null && i6 != -1) {
                editText.setMinWidth(i6);
            }
        }
        int i7 = this.f8105j;
        if (i7 != -1) {
            this.f8105j = i7;
            EditText editText2 = this.f8099g;
            if (editText2 != null && i7 != -1) {
                editText2.setMaxEms(i7);
            }
        } else {
            int i8 = this.f8109l;
            this.f8109l = i8;
            EditText editText3 = this.f8099g;
            if (editText3 != null && i8 != -1) {
                editText3.setMaxWidth(i8);
            }
        }
        this.f8076J = false;
        g();
        L l4 = new L(this);
        EditText editText4 = this.f8099g;
        if (editText4 != null) {
            J.h(editText4, l4);
        }
        a aVar = this.f8128u0;
        Typeface typeface = this.f8099g.getTypeface();
        boolean l5 = aVar.l(typeface);
        boolean n4 = aVar.n(typeface);
        if (l5 || n4) {
            aVar.i(false);
        }
        a aVar2 = this.f8128u0;
        float textSize = this.f8099g.getTextSize();
        if (aVar2.f8041l != textSize) {
            aVar2.f8041l = textSize;
            aVar2.i(false);
        }
        a aVar3 = this.f8128u0;
        float letterSpacing = this.f8099g.getLetterSpacing();
        if (aVar3.f8032g0 != letterSpacing) {
            aVar3.f8032g0 = letterSpacing;
            aVar3.i(false);
        }
        int gravity = this.f8099g.getGravity();
        a aVar4 = this.f8128u0;
        int i9 = (gravity & (-113)) | 48;
        if (aVar4.f8039k != i9) {
            aVar4.f8039k = i9;
            aVar4.i(false);
        }
        a aVar5 = this.f8128u0;
        if (aVar5.f8037j != gravity) {
            aVar5.f8037j = gravity;
            aVar5.i(false);
        }
        this.f8099g.addTextChangedListener(new I(this));
        if (this.f8104i0 == null) {
            this.f8104i0 = this.f8099g.getHintTextColors();
        }
        if (this.f8070D) {
            if (TextUtils.isEmpty(this.f8071E)) {
                CharSequence hint = this.f8099g.getHint();
                this.f8101h = hint;
                l(hint);
                this.f8099g.setHint((CharSequence) null);
            }
            this.f8072F = true;
        }
        if (this.f8121r != null) {
            p(this.f8099g.getText());
        }
        s();
        this.f8111m.b();
        this.f8095e.bringToFront();
        this.f8097f.bringToFront();
        Iterator it = this.f8096e0.iterator();
        while (it.hasNext()) {
            ((M) it.next()).a(this);
        }
        this.f8097f.l();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        v(false, true);
    }

    public void animateToExpansionFraction(float f4) {
        if (this.f8128u0.f8021b == f4) {
            return;
        }
        if (this.f8134x0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f8134x0 = valueAnimator;
            valueAnimator.setInterpolator(C1114a.f10701b);
            this.f8134x0.setDuration(167L);
            this.f8134x0.addUpdateListener(new K(this));
        }
        this.f8134x0.setFloatValues(this.f8128u0.f8021b, f4);
        this.f8134x0.start();
    }

    public final int b() {
        float e4;
        if (this.f8070D) {
            int i4 = this.f8082P;
            if (i4 == 0) {
                e4 = this.f8128u0.e();
            } else if (i4 != 2) {
                return 0;
            } else {
                e4 = this.f8128u0.e() / 2.0f;
            }
            return (int) e4;
        }
        return 0;
    }

    public final boolean c() {
        return this.f8070D && !TextUtils.isEmpty(this.f8071E) && (this.f8073G instanceof C0009h);
    }

    public boolean cutoutIsOpen() {
        return c() && (((C0009h) this.f8073G).f450C.isEmpty() ^ true);
    }

    public final i d(boolean z4) {
        int i4;
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float f4 = z4 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f8099g;
        float dimensionPixelOffset2 = editText instanceof D ? ((D) editText).f416k : getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        m mVar = new m();
        mVar.f189e = new C2.a(f4);
        mVar.f190f = new C2.a(f4);
        mVar.f192h = new C2.a(dimensionPixelOffset);
        mVar.f191g = new C2.a(dimensionPixelOffset);
        n nVar = new n(mVar);
        Context context = getContext();
        String str = i.f158A;
        TypedValue b4 = c.b(R.attr.colorSurface, context, i.class.getSimpleName());
        int i5 = b4.resourceId;
        if (i5 != 0) {
            Object obj = B.c.f105a;
            i4 = context.getColor(i5);
        } else {
            i4 = b4.data;
        }
        i iVar = new i();
        iVar.j(context);
        iVar.l(ColorStateList.valueOf(i4));
        iVar.k(dimensionPixelOffset2);
        iVar.b(nVar);
        h hVar = iVar.f160d;
        if (hVar.f144h == null) {
            hVar.f144h = new Rect();
        }
        iVar.f160d.f144h.set(0, dimensionPixelOffset3, 0, dimensionPixelOffset3);
        iVar.invalidateSelf();
        return iVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i4) {
        EditText editText = this.f8099g;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i4);
            return;
        }
        if (this.f8101h != null) {
            boolean z4 = this.f8072F;
            this.f8072F = false;
            CharSequence hint = editText.getHint();
            this.f8099g.setHint(this.f8101h);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i4);
                return;
            } finally {
                this.f8099g.setHint(hint);
                this.f8072F = z4;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i4);
        onProvideAutofillVirtualStructure(viewStructure, i4);
        viewStructure.setChildCount(this.f8093d.getChildCount());
        for (int i5 = 0; i5 < this.f8093d.getChildCount(); i5++) {
            View childAt = this.f8093d.getChildAt(i5);
            ViewStructure newChild = viewStructure.newChild(i5);
            childAt.dispatchProvideAutofillStructure(newChild, i4);
            if (childAt == this.f8099g) {
                newChild.setHint(this.f8070D ? this.f8071E : null);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.f8138z0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f8138z0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        i iVar;
        super.draw(canvas);
        if (this.f8070D) {
            this.f8128u0.d(canvas);
        }
        if (this.f8078L == null || (iVar = this.f8077K) == null) {
            return;
        }
        iVar.draw(canvas);
        if (this.f8099g.isFocused()) {
            Rect bounds = this.f8078L.getBounds();
            Rect bounds2 = this.f8077K.getBounds();
            float f4 = this.f8128u0.f8021b;
            int centerX = bounds2.centerX();
            int i4 = bounds2.left;
            TimeInterpolator timeInterpolator = C1114a.f10700a;
            bounds.left = Math.round((i4 - centerX) * f4) + centerX;
            bounds.right = Math.round(f4 * (bounds2.right - centerX)) + centerX;
            this.f8078L.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f8136y0) {
            return;
        }
        boolean z4 = true;
        this.f8136y0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        a aVar = this.f8128u0;
        boolean q4 = aVar != null ? aVar.q(drawableState) | false : false;
        if (this.f8099g != null) {
            WeakHashMap weakHashMap = J.f3079a;
            if (!androidx.core.view.A.c(this) || !isEnabled()) {
                z4 = false;
            }
            v(z4, false);
        }
        s();
        y();
        if (q4) {
            invalidate();
        }
        this.f8136y0 = false;
    }

    public final int e(int i4, boolean z4) {
        int compoundPaddingLeft = this.f8099g.getCompoundPaddingLeft() + i4;
        H h4 = this.f8095e;
        return (h4.f425f == null || z4) ? compoundPaddingLeft : (compoundPaddingLeft - h4.f424e.getMeasuredWidth()) + this.f8095e.f424e.getPaddingLeft();
    }

    public final int f(int i4, boolean z4) {
        int compoundPaddingRight = i4 - this.f8099g.getCompoundPaddingRight();
        H h4 = this.f8095e;
        return (h4.f425f == null || !z4) ? compoundPaddingRight : compoundPaddingRight + (h4.f424e.getMeasuredWidth() - this.f8095e.f424e.getPaddingRight());
    }

    public final void g() {
        int i4 = this.f8082P;
        if (i4 == 0) {
            this.f8073G = null;
            this.f8077K = null;
            this.f8078L = null;
        } else if (i4 == 1) {
            this.f8073G = new i(this.f8079M);
            this.f8077K = new i();
            this.f8078L = new i();
        } else if (i4 != 2) {
            throw new IllegalArgumentException(C1429e.a(new StringBuilder(), this.f8082P, " is illegal; only @BoxBackgroundMode constants are supported."));
        } else {
            if (!this.f8070D || (this.f8073G instanceof C0009h)) {
                this.f8073G = new i(this.f8079M);
            } else {
                this.f8073G = new C0009h(this.f8079M);
            }
            this.f8077K = null;
            this.f8078L = null;
        }
        t();
        y();
        if (this.f8082P == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.f8083Q = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (d.d(getContext())) {
                this.f8083Q = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.f8099g != null && this.f8082P == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText = this.f8099g;
                WeakHashMap weakHashMap = J.f3079a;
                C0187y.h(editText, C0187y.e(editText), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), C0187y.d(this.f8099g), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (d.d(getContext())) {
                EditText editText2 = this.f8099g;
                WeakHashMap weakHashMap2 = J.f3079a;
                C0187y.h(editText2, C0187y.e(editText2), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), C0187y.d(this.f8099g), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.f8082P != 0) {
            u();
        }
        EditText editText3 = this.f8099g;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i5 = this.f8082P;
                if (i5 == 2) {
                    if (this.f8074H == null) {
                        this.f8074H = d(true);
                    }
                    autoCompleteTextView.setDropDownBackgroundDrawable(this.f8074H);
                } else if (i5 == 1) {
                    if (this.f8075I == null) {
                        StateListDrawable stateListDrawable = new StateListDrawable();
                        this.f8075I = stateListDrawable;
                        int[] iArr = {16842922};
                        if (this.f8074H == null) {
                            this.f8074H = d(true);
                        }
                        stateListDrawable.addState(iArr, this.f8074H);
                        this.f8075I.addState(new int[0], d(false));
                    }
                    autoCompleteTextView.setDropDownBackgroundDrawable(this.f8075I);
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final int getBaseline() {
        EditText editText = this.f8099g;
        if (editText != null) {
            int baseline = editText.getBaseline();
            return b() + getPaddingTop() + baseline;
        }
        return super.getBaseline();
    }

    public final float getHintCollapsedTextHeight() {
        return this.f8128u0.e();
    }

    public final int getHintCurrentCollapsedTextColor() {
        a aVar = this.f8128u0;
        return aVar.f(aVar.f8047o);
    }

    public final void h() {
        float f4;
        float f5;
        float f6;
        float f7;
        int i4;
        int i5;
        if (c()) {
            RectF rectF = this.f8091b0;
            a aVar = this.f8128u0;
            int width = this.f8099g.getWidth();
            int gravity = this.f8099g.getGravity();
            boolean b4 = aVar.b(aVar.f7999G);
            aVar.f8001I = b4;
            Rect rect = aVar.f8033h;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (b4) {
                        i5 = rect.left;
                        f6 = i5;
                    } else {
                        f4 = rect.right;
                        f5 = aVar.f8038j0;
                    }
                } else if (b4) {
                    f4 = rect.right;
                    f5 = aVar.f8038j0;
                } else {
                    i5 = rect.left;
                    f6 = i5;
                }
                float max = Math.max(f6, rect.left);
                rectF.left = max;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f7 = (width / 2.0f) + (aVar.f8038j0 / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (aVar.f8001I) {
                        f7 = aVar.f8038j0 + max;
                    } else {
                        i4 = rect.right;
                        f7 = i4;
                    }
                } else if (aVar.f8001I) {
                    i4 = rect.right;
                    f7 = i4;
                } else {
                    f7 = aVar.f8038j0 + max;
                }
                rectF.right = Math.min(f7, rect.right);
                rectF.bottom = aVar.e() + rect.top;
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f8 = rectF.left;
                float f9 = this.f8081O;
                rectF.left = f8 - f9;
                rectF.right += f9;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f8084R);
                C0009h c0009h = (C0009h) this.f8073G;
                c0009h.getClass();
                c0009h.p(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f4 = width / 2.0f;
            f5 = aVar.f8038j0 / 2.0f;
            f6 = f4 - f5;
            float max2 = Math.max(f6, rect.left);
            rectF.left = max2;
            rectF.top = rect.top;
            if (gravity != 17) {
            }
            f7 = (width / 2.0f) + (aVar.f8038j0 / 2.0f);
            rectF.right = Math.min(f7, rect.right);
            rectF.bottom = aVar.e() + rect.top;
            if (rectF.width() > 0.0f) {
            }
        }
    }

    public final boolean isHelperTextDisplayed() {
        A a4 = this.f8111m;
        return (a4.f396h != 2 || a4.f406r == null || TextUtils.isEmpty(a4.f404p)) ? false : true;
    }

    public final void j(boolean z4) {
        A a4 = this.f8111m;
        if (a4.f399k == z4) {
            return;
        }
        a4.c();
        TextInputLayout textInputLayout = a4.f390b;
        if (z4) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(a4.f389a);
            a4.f400l = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            a4.f400l.setTextAlignment(5);
            int i4 = a4.f402n;
            a4.f402n = i4;
            AppCompatTextView appCompatTextView2 = a4.f400l;
            if (appCompatTextView2 != null) {
                textInputLayout.n(appCompatTextView2, i4);
            }
            ColorStateList colorStateList = a4.f403o;
            a4.f403o = colorStateList;
            AppCompatTextView appCompatTextView3 = a4.f400l;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = a4.f401m;
            a4.f401m = charSequence;
            AppCompatTextView appCompatTextView4 = a4.f400l;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            a4.f400l.setVisibility(4);
            AppCompatTextView appCompatTextView5 = a4.f400l;
            WeakHashMap weakHashMap = J.f3079a;
            androidx.core.view.A.e(appCompatTextView5, 1);
            a4.a(a4.f400l, 0);
        } else {
            a4.f();
            a4.g(a4.f400l, 0);
            a4.f400l = null;
            textInputLayout.s();
            textInputLayout.y();
        }
        a4.f399k = z4;
    }

    public final void k(boolean z4) {
        A a4 = this.f8111m;
        if (a4.f405q == z4) {
            return;
        }
        a4.c();
        if (z4) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(a4.f389a);
            a4.f406r = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            a4.f406r.setTextAlignment(5);
            a4.f406r.setVisibility(4);
            AppCompatTextView appCompatTextView2 = a4.f406r;
            WeakHashMap weakHashMap = J.f3079a;
            androidx.core.view.A.e(appCompatTextView2, 1);
            int i4 = a4.f407s;
            a4.f407s = i4;
            AppCompatTextView appCompatTextView3 = a4.f406r;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTextAppearance(i4);
            }
            ColorStateList colorStateList = a4.f408t;
            a4.f408t = colorStateList;
            AppCompatTextView appCompatTextView4 = a4.f406r;
            if (appCompatTextView4 != null && colorStateList != null) {
                appCompatTextView4.setTextColor(colorStateList);
            }
            a4.a(a4.f406r, 1);
            a4.f406r.setAccessibilityDelegate(new z(a4));
        } else {
            a4.c();
            int i5 = a4.f396h;
            if (i5 == 2) {
                a4.f397i = 0;
            }
            a4.i(i5, a4.f397i, a4.h(a4.f406r, ""));
            a4.g(a4.f406r, 1);
            a4.f406r = null;
            TextInputLayout textInputLayout = a4.f390b;
            textInputLayout.s();
            textInputLayout.y();
        }
        a4.f405q = z4;
    }

    public final void l(CharSequence charSequence) {
        if (this.f8070D) {
            if (!TextUtils.equals(charSequence, this.f8071E)) {
                this.f8071E = charSequence;
                a aVar = this.f8128u0;
                if (charSequence == null || !TextUtils.equals(aVar.f7999G, charSequence)) {
                    aVar.f7999G = charSequence;
                    aVar.f8000H = null;
                    Bitmap bitmap = aVar.f8003K;
                    if (bitmap != null) {
                        bitmap.recycle();
                        aVar.f8003K = null;
                    }
                    aVar.i(false);
                }
                if (!this.f8126t0) {
                    h();
                }
            }
            sendAccessibilityEvent(2048);
        }
    }

    public final void m(boolean z4) {
        if (this.f8129v == z4) {
            return;
        }
        if (z4) {
            AppCompatTextView appCompatTextView = this.f8131w;
            if (appCompatTextView != null) {
                this.f8093d.addView(appCompatTextView);
                this.f8131w.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.f8131w;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.f8131w = null;
        }
        this.f8129v = z4;
    }

    public final void n(TextView textView, int i4) {
        boolean z4 = true;
        try {
            textView.setTextAppearance(i4);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                z4 = false;
            }
        } catch (Exception unused) {
        }
        if (z4) {
            textView.setTextAppearance(R.style.TextAppearance_AppCompat_Caption);
            Context context = getContext();
            Object obj = B.c.f105a;
            textView.setTextColor(context.getColor(R.color.design_error));
        }
    }

    public final boolean o() {
        A a4 = this.f8111m;
        return (a4.f397i != 1 || a4.f400l == null || TextUtils.isEmpty(a4.f398j)) ? false : true;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f8128u0.h(configuration);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        EditText editText = this.f8099g;
        if (editText != null) {
            Rect rect = this.f8089W;
            C1467e.a(this, editText, rect);
            i iVar = this.f8077K;
            if (iVar != null) {
                int i8 = rect.bottom;
                iVar.setBounds(rect.left, i8 - this.f8085S, rect.right, i8);
            }
            i iVar2 = this.f8078L;
            if (iVar2 != null) {
                int i9 = rect.bottom;
                iVar2.setBounds(rect.left, i9 - this.f8086T, rect.right, i9);
            }
            if (this.f8070D) {
                a aVar = this.f8128u0;
                float textSize = this.f8099g.getTextSize();
                if (aVar.f8041l != textSize) {
                    aVar.f8041l = textSize;
                    aVar.i(false);
                }
                int gravity = this.f8099g.getGravity();
                a aVar2 = this.f8128u0;
                int i10 = (gravity & (-113)) | 48;
                if (aVar2.f8039k != i10) {
                    aVar2.f8039k = i10;
                    aVar2.i(false);
                }
                a aVar3 = this.f8128u0;
                if (aVar3.f8037j != gravity) {
                    aVar3.f8037j = gravity;
                    aVar3.i(false);
                }
                a aVar4 = this.f8128u0;
                if (this.f8099g == null) {
                    throw new IllegalStateException();
                }
                Rect rect2 = this.f8090a0;
                boolean a4 = C1485w.a(this);
                rect2.bottom = rect.bottom;
                int i11 = this.f8082P;
                if (i11 == 1) {
                    rect2.left = e(rect.left, a4);
                    rect2.top = rect.top + this.f8083Q;
                    rect2.right = f(rect.right, a4);
                } else if (i11 != 2) {
                    rect2.left = e(rect.left, a4);
                    rect2.top = getPaddingTop();
                    rect2.right = f(rect.right, a4);
                } else {
                    rect2.left = this.f8099g.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - b();
                    rect2.right = rect.right - this.f8099g.getPaddingRight();
                }
                aVar4.getClass();
                int i12 = rect2.left;
                int i13 = rect2.top;
                int i14 = rect2.right;
                int i15 = rect2.bottom;
                Rect rect3 = aVar4.f8033h;
                if (!(rect3.left == i12 && rect3.top == i13 && rect3.right == i14 && rect3.bottom == i15)) {
                    rect3.set(i12, i13, i14, i15);
                    aVar4.f8011S = true;
                }
                a aVar5 = this.f8128u0;
                if (this.f8099g == null) {
                    throw new IllegalStateException();
                }
                Rect rect4 = this.f8090a0;
                TextPaint textPaint = aVar5.f8013U;
                textPaint.setTextSize(aVar5.f8041l);
                textPaint.setTypeface(aVar5.f8060z);
                textPaint.setLetterSpacing(aVar5.f8032g0);
                float f4 = -textPaint.ascent();
                rect4.left = this.f8099g.getCompoundPaddingLeft() + rect.left;
                rect4.top = this.f8082P == 1 && this.f8099g.getMinLines() <= 1 ? (int) (rect.centerY() - (f4 / 2.0f)) : rect.top + this.f8099g.getCompoundPaddingTop();
                rect4.right = rect.right - this.f8099g.getCompoundPaddingRight();
                int compoundPaddingBottom = this.f8082P == 1 && this.f8099g.getMinLines() <= 1 ? (int) (rect4.top + f4) : rect.bottom - this.f8099g.getCompoundPaddingBottom();
                rect4.bottom = compoundPaddingBottom;
                int i16 = rect4.left;
                int i17 = rect4.top;
                int i18 = rect4.right;
                Rect rect5 = aVar5.f8031g;
                if (!(rect5.left == i16 && rect5.top == i17 && rect5.right == i18 && rect5.bottom == compoundPaddingBottom)) {
                    rect5.set(i16, i17, i18, compoundPaddingBottom);
                    aVar5.f8011S = true;
                }
                this.f8128u0.i(false);
                if (!c() || this.f8126t0) {
                    return;
                }
                h();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        boolean z4;
        EditText editText;
        int max;
        super.onMeasure(i4, i5);
        if (this.f8099g != null && this.f8099g.getMeasuredHeight() < (max = Math.max(this.f8097f.getMeasuredHeight(), this.f8095e.getMeasuredHeight()))) {
            this.f8099g.setMinimumHeight(max);
            z4 = true;
        } else {
            z4 = false;
        }
        boolean r4 = r();
        if (z4 || r4) {
            this.f8099g.post(new F2.J(this, 1));
        }
        if (this.f8131w != null && (editText = this.f8099g) != null) {
            this.f8131w.setGravity(editText.getGravity());
            this.f8131w.setPadding(this.f8099g.getCompoundPaddingLeft(), this.f8099g.getCompoundPaddingTop(), this.f8099g.getCompoundPaddingRight(), this.f8099g.getCompoundPaddingBottom());
        }
        this.f8097f.l();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onRestoreInstanceState(android.os.Parcelable r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof F2.P
            if (r0 != 0) goto L8
            super.onRestoreInstanceState(r6)
            return
        L8:
            F2.P r6 = (F2.P) r6
            android.os.Parcelable r0 = r6.f1528d
            super.onRestoreInstanceState(r0)
            java.lang.CharSequence r0 = r6.f436f
            F2.A r1 = r5.f8111m
            boolean r1 = r1.f399k
            r2 = 1
            if (r1 != 0) goto L22
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L1f
            goto L4b
        L1f:
            r5.j(r2)
        L22:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L46
            F2.A r1 = r5.f8111m
            r1.c()
            r1.f398j = r0
            androidx.appcompat.widget.AppCompatTextView r3 = r1.f400l
            r3.setText(r0)
            int r3 = r1.f396h
            if (r3 == r2) goto L3a
            r1.f397i = r2
        L3a:
            int r2 = r1.f397i
            androidx.appcompat.widget.AppCompatTextView r4 = r1.f400l
            boolean r0 = r1.h(r4, r0)
            r1.i(r3, r2, r0)
            goto L4b
        L46:
            F2.A r0 = r5.f8111m
            r0.f()
        L4b:
            boolean r6 = r6.f437g
            if (r6 == 0) goto L58
            F2.J r6 = new F2.J
            r0 = 0
            r6.<init>(r5, r0)
            r5.post(r6)
        L58:
            r5.requestLayout()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.onRestoreInstanceState(android.os.Parcelable):void");
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i4) {
        super.onRtlPropertiesChanged(i4);
        boolean z4 = false;
        boolean z5 = i4 == 1;
        boolean z6 = this.f8080N;
        if (z5 != z6) {
            if (z5 && !z6) {
                z4 = true;
            }
            float a4 = this.f8079M.f201e.a(this.f8091b0);
            float a5 = this.f8079M.f202f.a(this.f8091b0);
            float a6 = this.f8079M.f204h.a(this.f8091b0);
            float a7 = this.f8079M.f203g.a(this.f8091b0);
            float f4 = z4 ? a4 : a5;
            if (z4) {
                a4 = a5;
            }
            float f5 = z4 ? a6 : a7;
            if (z4) {
                a6 = a7;
            }
            boolean a8 = C1485w.a(this);
            this.f8080N = a8;
            float f6 = a8 ? a4 : f4;
            if (!a8) {
                f4 = a4;
            }
            float f7 = a8 ? a6 : f5;
            if (!a8) {
                f5 = a6;
            }
            i iVar = this.f8073G;
            if (iVar != null && iVar.f160d.f137a.f201e.a(iVar.i()) == f6) {
                i iVar2 = this.f8073G;
                if (iVar2.f160d.f137a.f202f.a(iVar2.i()) == f4) {
                    i iVar3 = this.f8073G;
                    if (iVar3.f160d.f137a.f204h.a(iVar3.i()) == f7) {
                        i iVar4 = this.f8073G;
                        if (iVar4.f160d.f137a.f203g.a(iVar4.i()) == f5) {
                            return;
                        }
                    }
                }
            }
            n nVar = this.f8079M;
            nVar.getClass();
            m mVar = new m(nVar);
            mVar.f189e = new C2.a(f6);
            mVar.f190f = new C2.a(f4);
            mVar.f192h = new C2.a(f7);
            mVar.f191g = new C2.a(f5);
            this.f8079M = new n(mVar);
            a();
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        P p4 = new P(super.onSaveInstanceState());
        if (o()) {
            A a4 = this.f8111m;
            p4.f436f = a4.f399k ? a4.f398j : null;
        }
        v vVar = this.f8097f;
        boolean z4 = true;
        if (!(vVar.f484k != 0) || !vVar.f482i.isChecked()) {
            z4 = false;
        }
        p4.f437g = z4;
        return p4;
    }

    public final void p(Editable editable) {
        getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z4 = this.f8117p;
        int i4 = this.f8115o;
        if (i4 == -1) {
            this.f8121r.setText(String.valueOf(length));
            this.f8121r.setContentDescription(null);
            this.f8117p = false;
        } else {
            this.f8117p = length > i4;
            Context context = getContext();
            this.f8121r.setContentDescription(context.getString(this.f8117p ? R.string.character_counter_overflowed_content_description : R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.f8115o)));
            if (z4 != this.f8117p) {
                q();
            }
            this.f8121r.setText(b.c().d(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.f8115o))));
        }
        if (this.f8099g == null || z4 == this.f8117p) {
            return;
        }
        v(false, false);
        y();
        s();
    }

    public final void q() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.f8121r;
        if (appCompatTextView != null) {
            n(appCompatTextView, this.f8117p ? this.f8123s : this.f8125t);
            if (!this.f8117p && (colorStateList2 = this.f8068B) != null) {
                this.f8121r.setTextColor(colorStateList2);
            }
            if (!this.f8117p || (colorStateList = this.f8069C) == null) {
                return;
            }
            this.f8121r.setTextColor(colorStateList);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
        if (r0.f424e.getVisibility() == 0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0099, code lost:
        if (r6.d() != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x009f, code lost:
        if (r10.f8097f.f489p != null) goto L69;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r() {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.r():boolean");
    }

    public final void s() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.f8099g;
        if (editText == null || this.f8082P != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        Rect rect = C1154o0.f10945a;
        Drawable mutate = background.mutate();
        if (o()) {
            AppCompatTextView appCompatTextView2 = this.f8111m.f400l;
            mutate.setColorFilter(C1117A.c(appCompatTextView2 != null ? appCompatTextView2.getCurrentTextColor() : -1, PorterDuff.Mode.SRC_IN));
        } else if (this.f8117p && (appCompatTextView = this.f8121r) != null) {
            mutate.setColorFilter(C1117A.c(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            mutate.clearColorFilter();
            this.f8099g.refreshDrawableState();
        }
    }

    @Override // android.view.View
    public final void setEnabled(boolean z4) {
        i(this, z4);
        super.setEnabled(z4);
    }

    public final void t() {
        Drawable drawable;
        int i4;
        EditText editText = this.f8099g;
        if (editText == null || this.f8073G == null) {
            return;
        }
        if ((this.f8076J || editText.getBackground() == null) && this.f8082P != 0) {
            EditText editText2 = this.f8099g;
            if (editText2 instanceof AutoCompleteTextView) {
                if (!(editText2.getInputType() != 0)) {
                    int b4 = C1394a.b(this.f8099g, R.attr.colorControlHighlight);
                    int i5 = this.f8082P;
                    int[][] iArr = f8066A0;
                    if (i5 == 2) {
                        Context context = getContext();
                        i iVar = this.f8073G;
                        TypedValue b5 = c.b(R.attr.colorSurface, context, "TextInputLayout");
                        int i6 = b5.resourceId;
                        if (i6 != 0) {
                            Object obj = B.c.f105a;
                            i4 = context.getColor(i6);
                        } else {
                            i4 = b5.data;
                        }
                        i iVar2 = new i(iVar.f160d.f137a);
                        int d4 = C1394a.d(b4, i4, 0.1f);
                        iVar2.l(new ColorStateList(iArr, new int[]{d4, 0}));
                        iVar2.setTint(i4);
                        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{d4, i4});
                        i iVar3 = new i(iVar.f160d.f137a);
                        iVar3.setTint(-1);
                        drawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, iVar2, iVar3), iVar});
                    } else if (i5 == 1) {
                        i iVar4 = this.f8073G;
                        int i7 = this.f8088V;
                        drawable = new RippleDrawable(new ColorStateList(iArr, new int[]{C1394a.d(b4, i7, 0.1f), i7}), iVar4, iVar4);
                    } else {
                        drawable = null;
                    }
                    WeakHashMap weakHashMap = J.f3079a;
                    C0186x.m(editText2, drawable);
                    this.f8076J = true;
                }
            }
            drawable = this.f8073G;
            WeakHashMap weakHashMap2 = J.f3079a;
            C0186x.m(editText2, drawable);
            this.f8076J = true;
        }
    }

    public final void u() {
        if (this.f8082P != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f8093d.getLayoutParams();
            int b4 = b();
            if (b4 != layoutParams.topMargin) {
                layoutParams.topMargin = b4;
                this.f8093d.requestLayout();
            }
        }
    }

    public final void v(boolean z4, boolean z5) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f8099g;
        boolean z6 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f8099g;
        boolean z7 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.f8104i0;
        if (colorStateList2 != null) {
            this.f8128u0.k(colorStateList2);
            a aVar = this.f8128u0;
            ColorStateList colorStateList3 = this.f8104i0;
            if (aVar.f8045n != colorStateList3) {
                aVar.f8045n = colorStateList3;
                aVar.i(false);
            }
        }
        if (!isEnabled) {
            ColorStateList colorStateList4 = this.f8104i0;
            int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(new int[]{-16842910}, this.f8124s0) : this.f8124s0;
            this.f8128u0.k(ColorStateList.valueOf(colorForState));
            a aVar2 = this.f8128u0;
            ColorStateList valueOf = ColorStateList.valueOf(colorForState);
            if (aVar2.f8045n != valueOf) {
                aVar2.f8045n = valueOf;
                aVar2.i(false);
            }
        } else if (o()) {
            a aVar3 = this.f8128u0;
            AppCompatTextView appCompatTextView2 = this.f8111m.f400l;
            aVar3.k(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.f8117p && (appCompatTextView = this.f8121r) != null) {
            this.f8128u0.k(appCompatTextView.getTextColors());
        } else if (z7 && (colorStateList = this.f8106j0) != null) {
            this.f8128u0.k(colorStateList);
        }
        if (z6 || !this.f8130v0 || (isEnabled() && z7)) {
            if (z5 || this.f8126t0) {
                ValueAnimator valueAnimator = this.f8134x0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f8134x0.cancel();
                }
                if (z4 && this.f8132w0) {
                    animateToExpansionFraction(1.0f);
                } else {
                    this.f8128u0.o(1.0f);
                }
                this.f8126t0 = false;
                if (c()) {
                    h();
                }
                EditText editText3 = this.f8099g;
                w(editText3 != null ? editText3.getText() : null);
                H h4 = this.f8095e;
                h4.f430k = false;
                h4.b();
                v vVar = this.f8097f;
                vVar.f491r = false;
                vVar.m();
            }
        } else if (z5 || !this.f8126t0) {
            ValueAnimator valueAnimator2 = this.f8134x0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f8134x0.cancel();
            }
            if (z4 && this.f8132w0) {
                animateToExpansionFraction(0.0f);
            } else {
                this.f8128u0.o(0.0f);
            }
            if (c() && (!((C0009h) this.f8073G).f450C.isEmpty()) && c()) {
                ((C0009h) this.f8073G).p(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f8126t0 = true;
            AppCompatTextView appCompatTextView3 = this.f8131w;
            if (appCompatTextView3 != null && this.f8129v) {
                appCompatTextView3.setText((CharSequence) null);
                C0931B.a(this.f8093d, this.f8067A);
                this.f8131w.setVisibility(4);
            }
            H h5 = this.f8095e;
            h5.f430k = true;
            h5.b();
            v vVar2 = this.f8097f;
            vVar2.f491r = true;
            vVar2.m();
        }
    }

    public final void w(Editable editable) {
        getClass();
        if ((editable != null ? editable.length() : 0) != 0 || this.f8126t0) {
            AppCompatTextView appCompatTextView = this.f8131w;
            if (appCompatTextView == null || !this.f8129v) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            C0931B.a(this.f8093d, this.f8067A);
            this.f8131w.setVisibility(4);
        } else if (this.f8131w == null || !this.f8129v || TextUtils.isEmpty(this.f8127u)) {
        } else {
            this.f8131w.setText(this.f8127u);
            C0931B.a(this.f8093d, this.f8137z);
            this.f8131w.setVisibility(0);
            this.f8131w.bringToFront();
            announceForAccessibility(this.f8127u);
        }
    }

    public final void x(boolean z4, boolean z5) {
        int defaultColor = this.f8114n0.getDefaultColor();
        int colorForState = this.f8114n0.getColorForState(new int[]{16843623, 16842910}, defaultColor);
        int colorForState2 = this.f8114n0.getColorForState(new int[]{16843518, 16842910}, defaultColor);
        if (z4) {
            this.f8087U = colorForState2;
        } else if (z5) {
            this.f8087U = colorForState;
        } else {
            this.f8087U = defaultColor;
        }
    }

    public final void y() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.f8073G == null || this.f8082P == 0) {
            return;
        }
        boolean z4 = false;
        boolean z5 = isFocused() || ((editText2 = this.f8099g) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f8099g) != null && editText.isHovered())) {
            z4 = true;
        }
        if (!isEnabled()) {
            this.f8087U = this.f8124s0;
        } else if (o()) {
            if (this.f8114n0 != null) {
                x(z5, z4);
            } else {
                AppCompatTextView appCompatTextView2 = this.f8111m.f400l;
                this.f8087U = appCompatTextView2 != null ? appCompatTextView2.getCurrentTextColor() : -1;
            }
        } else if (!this.f8117p || (appCompatTextView = this.f8121r) == null) {
            if (z5) {
                this.f8087U = this.f8112m0;
            } else if (z4) {
                this.f8087U = this.f8110l0;
            } else {
                this.f8087U = this.f8108k0;
            }
        } else if (this.f8114n0 != null) {
            x(z5, z4);
        } else {
            this.f8087U = appCompatTextView.getCurrentTextColor();
        }
        v vVar = this.f8097f;
        vVar.k();
        x.b(vVar.f477d, vVar.f479f, vVar.f480g);
        x.b(vVar.f477d, vVar.f482i, vVar.f486m);
        if (vVar.c() instanceof q) {
            if (!vVar.f477d.o() || vVar.f482i.getDrawable() == null) {
                x.a(vVar.f477d, vVar.f482i, vVar.f486m, vVar.f487n);
            } else {
                Drawable mutate = vVar.f482i.getDrawable().mutate();
                AppCompatTextView appCompatTextView3 = vVar.f477d.f8111m.f400l;
                mutate.setTint(appCompatTextView3 != null ? appCompatTextView3.getCurrentTextColor() : -1);
                vVar.f482i.setImageDrawable(mutate);
            }
        }
        H h4 = this.f8095e;
        x.b(h4.f423d, h4.f426g, h4.f427h);
        if (this.f8082P == 2) {
            int i4 = this.f8084R;
            if (z5 && isEnabled()) {
                this.f8084R = this.f8086T;
            } else {
                this.f8084R = this.f8085S;
            }
            if (this.f8084R != i4 && c() && !this.f8126t0) {
                if (c()) {
                    ((C0009h) this.f8073G).p(0.0f, 0.0f, 0.0f, 0.0f);
                }
                h();
            }
        }
        if (this.f8082P == 1) {
            if (!isEnabled()) {
                this.f8088V = this.f8118p0;
            } else if (z4 && !z5) {
                this.f8088V = this.f8122r0;
            } else if (z5) {
                this.f8088V = this.f8120q0;
            } else {
                this.f8088V = this.f8116o0;
            }
        }
        a();
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textInputStyle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v74 */
    /* JADX WARN: Type inference failed for: r2v86 */
    public TextInputLayout(Context context, AttributeSet attributeSet, int i4) {
        super(H2.a.a(context, attributeSet, i4, R.style.Widget_Design_TextInputLayout), attributeSet, i4);
        ?? r22;
        int i5;
        ColorStateList b4;
        ColorStateList b5;
        ColorStateList b6;
        ColorStateList b7;
        ColorStateList b8;
        this.f8103i = -1;
        this.f8105j = -1;
        this.f8107k = -1;
        this.f8109l = -1;
        A a4 = new A(this);
        this.f8111m = a4;
        this.f8119q = new ViewCompat$$ExternalSyntheticLambda0();
        this.f8089W = new Rect();
        this.f8090a0 = new Rect();
        this.f8091b0 = new RectF();
        this.f8096e0 = new LinkedHashSet();
        a aVar = new a(this);
        this.f8128u0 = aVar;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f8093d = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        TimeInterpolator timeInterpolator = C1114a.f10700a;
        aVar.f8015W = timeInterpolator;
        aVar.i(false);
        aVar.f8014V = timeInterpolator;
        aVar.i(false);
        if (aVar.f8039k != 8388659) {
            aVar.f8039k = 8388659;
            aVar.i(false);
        }
        int[] iArr = C0980a.f9623C;
        C1480r.a(context2, attributeSet, i4, R.style.Widget_Design_TextInputLayout);
        C1480r.b(context2, attributeSet, iArr, i4, R.style.Widget_Design_TextInputLayout, 22, 20, 35, 40, 44);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i4, R.style.Widget_Design_TextInputLayout);
        R0 r02 = new R0(context2, obtainStyledAttributes);
        H h4 = new H(this, r02);
        this.f8095e = h4;
        this.f8070D = r02.a(43, true);
        l(r02.k(4));
        this.f8132w0 = r02.a(42, true);
        this.f8130v0 = r02.a(37, true);
        if (r02.l(6)) {
            int h5 = r02.h(6, -1);
            this.f8103i = h5;
            EditText editText = this.f8099g;
            if (editText != null && h5 != -1) {
                editText.setMinEms(h5);
            }
        } else if (r02.l(3)) {
            int d4 = r02.d(3, -1);
            this.f8107k = d4;
            EditText editText2 = this.f8099g;
            if (editText2 != null && d4 != -1) {
                editText2.setMinWidth(d4);
            }
        }
        if (r02.l(5)) {
            int h6 = r02.h(5, -1);
            this.f8105j = h6;
            EditText editText3 = this.f8099g;
            if (editText3 != null && h6 != -1) {
                editText3.setMaxEms(h6);
            }
        } else if (r02.l(2)) {
            int d5 = r02.d(2, -1);
            this.f8109l = d5;
            EditText editText4 = this.f8099g;
            if (editText4 != null && d5 != -1) {
                editText4.setMaxWidth(d5);
            }
        }
        this.f8079M = new n(n.b(context2, attributeSet, i4, R.style.Widget_Design_TextInputLayout));
        this.f8081O = context2.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f8083Q = r02.c(9, 0);
        int d6 = r02.d(16, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
        this.f8085S = d6;
        this.f8086T = r02.d(17, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.f8084R = d6;
        float dimension = obtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = obtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = obtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = obtainStyledAttributes.getDimension(11, -1.0f);
        n nVar = this.f8079M;
        nVar.getClass();
        m mVar = new m(nVar);
        if (dimension >= 0.0f) {
            mVar.f189e = new C2.a(dimension);
        }
        if (dimension2 >= 0.0f) {
            mVar.f190f = new C2.a(dimension2);
        }
        if (dimension3 >= 0.0f) {
            mVar.f191g = new C2.a(dimension3);
        }
        if (dimension4 >= 0.0f) {
            mVar.f192h = new C2.a(dimension4);
        }
        this.f8079M = new n(mVar);
        ColorStateList b9 = d.b(context2, r02, 7);
        if (b9 != null) {
            int defaultColor = b9.getDefaultColor();
            this.f8116o0 = defaultColor;
            this.f8088V = defaultColor;
            if (b9.isStateful()) {
                this.f8118p0 = b9.getColorForState(new int[]{-16842910}, -1);
                this.f8120q0 = b9.getColorForState(new int[]{16842908, 16842910}, -1);
                this.f8122r0 = b9.getColorForState(new int[]{16843623, 16842910}, -1);
            } else {
                this.f8120q0 = defaultColor;
                ColorStateList a5 = B.c.a(R.color.mtrl_filled_background_color, context2);
                this.f8118p0 = a5.getColorForState(new int[]{-16842910}, -1);
                this.f8122r0 = a5.getColorForState(new int[]{16843623}, -1);
            }
        } else {
            this.f8088V = 0;
            this.f8116o0 = 0;
            this.f8118p0 = 0;
            this.f8120q0 = 0;
            this.f8122r0 = 0;
        }
        if (r02.l(1)) {
            ColorStateList b10 = r02.b(1);
            this.f8106j0 = b10;
            this.f8104i0 = b10;
        }
        ColorStateList b11 = d.b(context2, r02, 14);
        this.f8112m0 = obtainStyledAttributes.getColor(14, 0);
        Object obj = B.c.f105a;
        this.f8108k0 = context2.getColor(R.color.mtrl_textinput_default_box_stroke_color);
        this.f8124s0 = context2.getColor(R.color.mtrl_textinput_disabled_color);
        this.f8110l0 = context2.getColor(R.color.mtrl_textinput_hovered_box_stroke_color);
        if (b11 != null) {
            if (b11.isStateful()) {
                this.f8108k0 = b11.getDefaultColor();
                this.f8124s0 = b11.getColorForState(new int[]{-16842910}, -1);
                this.f8110l0 = b11.getColorForState(new int[]{16843623, 16842910}, -1);
                this.f8112m0 = b11.getColorForState(new int[]{16842908, 16842910}, -1);
            } else if (this.f8112m0 != b11.getDefaultColor()) {
                this.f8112m0 = b11.getDefaultColor();
            }
            y();
        }
        if (r02.l(15) && this.f8114n0 != (b8 = d.b(context2, r02, 15))) {
            this.f8114n0 = b8;
            y();
        }
        if (r02.i(44, -1) != -1) {
            r22 = 0;
            r22 = 0;
            aVar.j(r02.i(44, 0));
            this.f8106j0 = aVar.f8047o;
            if (this.f8099g != null) {
                v(false, false);
                u();
            }
        } else {
            r22 = 0;
        }
        int i6 = r02.i(35, r22);
        CharSequence k4 = r02.k(30);
        boolean a6 = r02.a(31, r22);
        int i7 = r02.i(40, r22);
        boolean a7 = r02.a(39, r22);
        CharSequence k5 = r02.k(38);
        int i8 = r02.i(52, r22);
        CharSequence k6 = r02.k(51);
        boolean a8 = r02.a(18, r22);
        int h7 = r02.h(19, -1);
        if (this.f8115o != h7) {
            if (h7 > 0) {
                this.f8115o = h7;
            } else {
                this.f8115o = -1;
            }
            if (this.f8113n && this.f8121r != null) {
                EditText editText5 = this.f8099g;
                p(editText5 == null ? null : editText5.getText());
            }
        }
        this.f8125t = r02.i(22, 0);
        this.f8123s = r02.i(20, 0);
        int h8 = r02.h(8, 0);
        if (h8 != this.f8082P) {
            this.f8082P = h8;
            if (this.f8099g != null) {
                g();
            }
        }
        a4.f401m = k4;
        AppCompatTextView appCompatTextView = a4.f400l;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(k4);
        }
        a4.f407s = i7;
        AppCompatTextView appCompatTextView2 = a4.f406r;
        if (appCompatTextView2 != null) {
            appCompatTextView2.setTextAppearance(i7);
        }
        a4.f402n = i6;
        AppCompatTextView appCompatTextView3 = a4.f400l;
        if (appCompatTextView3 != null) {
            a4.f390b.n(appCompatTextView3, i6);
        }
        if (this.f8131w == null) {
            AppCompatTextView appCompatTextView4 = new AppCompatTextView(getContext());
            this.f8131w = appCompatTextView4;
            appCompatTextView4.setId(R.id.textinput_placeholder);
            AppCompatTextView appCompatTextView5 = this.f8131w;
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.o(appCompatTextView5, 2);
            C0939h c0939h = new C0939h();
            c0939h.f9453f = 87L;
            c0939h.f9454g = timeInterpolator;
            this.f8137z = c0939h;
            i5 = i8;
            c0939h.f9452e = 67L;
            C0939h c0939h2 = new C0939h();
            c0939h2.f9453f = 87L;
            c0939h2.f9454g = timeInterpolator;
            this.f8067A = c0939h2;
            int i9 = this.f8135y;
            this.f8135y = i9;
            AppCompatTextView appCompatTextView6 = this.f8131w;
            if (appCompatTextView6 != null) {
                appCompatTextView6.setTextAppearance(i9);
            }
        } else {
            i5 = i8;
        }
        if (TextUtils.isEmpty(k6)) {
            m(false);
        } else {
            if (!this.f8129v) {
                m(true);
            }
            this.f8127u = k6;
        }
        EditText editText6 = this.f8099g;
        w(editText6 == null ? null : editText6.getText());
        int i10 = i5;
        this.f8135y = i10;
        AppCompatTextView appCompatTextView7 = this.f8131w;
        if (appCompatTextView7 != null) {
            appCompatTextView7.setTextAppearance(i10);
        }
        if (r02.l(36)) {
            ColorStateList b12 = r02.b(36);
            a4.f403o = b12;
            AppCompatTextView appCompatTextView8 = a4.f400l;
            if (appCompatTextView8 != null && b12 != null) {
                appCompatTextView8.setTextColor(b12);
            }
        }
        if (r02.l(41)) {
            ColorStateList b13 = r02.b(41);
            a4.f408t = b13;
            AppCompatTextView appCompatTextView9 = a4.f406r;
            if (appCompatTextView9 != null && b13 != null) {
                appCompatTextView9.setTextColor(b13);
            }
        }
        if (r02.l(45) && this.f8106j0 != (b7 = r02.b(45))) {
            if (this.f8104i0 == null) {
                aVar.k(b7);
            }
            this.f8106j0 = b7;
            if (this.f8099g != null) {
                v(false, false);
            }
        }
        if (r02.l(23) && this.f8068B != (b6 = r02.b(23))) {
            this.f8068B = b6;
            q();
        }
        if (r02.l(21) && this.f8069C != (b5 = r02.b(21))) {
            this.f8069C = b5;
            q();
        }
        if (r02.l(53) && this.f8133x != (b4 = r02.b(53))) {
            this.f8133x = b4;
            AppCompatTextView appCompatTextView10 = this.f8131w;
            if (appCompatTextView10 != null && b4 != null) {
                appCompatTextView10.setTextColor(b4);
            }
        }
        v vVar = new v(this, r02);
        this.f8097f = vVar;
        boolean a9 = r02.a(0, true);
        r02.n();
        WeakHashMap weakHashMap2 = J.f3079a;
        C0186x.o(this, 2);
        F.b(this, 1);
        frameLayout.addView(h4);
        frameLayout.addView(vVar);
        addView(frameLayout);
        setEnabled(a9);
        k(a7);
        j(a6);
        if (this.f8113n != a8) {
            if (a8) {
                AppCompatTextView appCompatTextView11 = new AppCompatTextView(getContext());
                this.f8121r = appCompatTextView11;
                appCompatTextView11.setId(R.id.textinput_counter);
                this.f8121r.setMaxLines(1);
                a4.a(this.f8121r, 2);
                ((ViewGroup.MarginLayoutParams) this.f8121r.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                q();
                if (this.f8121r != null) {
                    EditText editText7 = this.f8099g;
                    p(editText7 == null ? null : editText7.getText());
                }
            } else {
                a4.g(this.f8121r, 2);
                this.f8121r = null;
            }
            this.f8113n = a8;
        }
        if (TextUtils.isEmpty(k5)) {
            if (a4.f405q) {
                k(false);
                return;
            }
            return;
        }
        if (!a4.f405q) {
            k(true);
        }
        a4.c();
        a4.f404p = k5;
        a4.f406r.setText(k5);
        int i11 = a4.f396h;
        if (i11 != 2) {
            a4.f397i = 2;
        }
        a4.i(i11, a4.f397i, a4.h(a4.f406r, k5));
    }
}
