package q2;

import C2.i;
import C2.p;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.android.systemui.shared.R;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import x2.C1476n;
import x2.C1478p;
import x2.InterfaceC1477o;
/* loaded from: classes.dex */
public final class f extends i implements Drawable.Callback, InterfaceC1477o {

    /* renamed from: I0  reason: collision with root package name */
    public static final int[] f11993I0 = {16842910};

    /* renamed from: J0  reason: collision with root package name */
    public static final ShapeDrawable f11994J0 = new ShapeDrawable(new OvalShape());

    /* renamed from: A0  reason: collision with root package name */
    public int[] f11995A0;

    /* renamed from: B0  reason: collision with root package name */
    public boolean f11996B0;

    /* renamed from: C  reason: collision with root package name */
    public ColorStateList f11997C;

    /* renamed from: C0  reason: collision with root package name */
    public ColorStateList f11998C0;

    /* renamed from: D  reason: collision with root package name */
    public ColorStateList f11999D;

    /* renamed from: D0  reason: collision with root package name */
    public WeakReference f12000D0;

    /* renamed from: E  reason: collision with root package name */
    public float f12001E;

    /* renamed from: E0  reason: collision with root package name */
    public TextUtils.TruncateAt f12002E0;

    /* renamed from: F  reason: collision with root package name */
    public float f12003F;

    /* renamed from: F0  reason: collision with root package name */
    public boolean f12004F0;

    /* renamed from: G  reason: collision with root package name */
    public ColorStateList f12005G;

    /* renamed from: G0  reason: collision with root package name */
    public int f12006G0;

    /* renamed from: H  reason: collision with root package name */
    public float f12007H;

    /* renamed from: H0  reason: collision with root package name */
    public boolean f12008H0;

    /* renamed from: I  reason: collision with root package name */
    public ColorStateList f12009I;

    /* renamed from: J  reason: collision with root package name */
    public CharSequence f12010J;

    /* renamed from: K  reason: collision with root package name */
    public boolean f12011K;

    /* renamed from: L  reason: collision with root package name */
    public Drawable f12012L;

    /* renamed from: M  reason: collision with root package name */
    public ColorStateList f12013M;

    /* renamed from: N  reason: collision with root package name */
    public float f12014N;

    /* renamed from: O  reason: collision with root package name */
    public boolean f12015O;

    /* renamed from: P  reason: collision with root package name */
    public boolean f12016P;

    /* renamed from: Q  reason: collision with root package name */
    public Drawable f12017Q;

    /* renamed from: R  reason: collision with root package name */
    public Drawable f12018R;

    /* renamed from: S  reason: collision with root package name */
    public ColorStateList f12019S;

    /* renamed from: T  reason: collision with root package name */
    public float f12020T;

    /* renamed from: U  reason: collision with root package name */
    public boolean f12021U;

    /* renamed from: V  reason: collision with root package name */
    public boolean f12022V;

    /* renamed from: W  reason: collision with root package name */
    public Drawable f12023W;

    /* renamed from: X  reason: collision with root package name */
    public ColorStateList f12024X;

    /* renamed from: Y  reason: collision with root package name */
    public float f12025Y;

    /* renamed from: Z  reason: collision with root package name */
    public float f12026Z;

    /* renamed from: a0  reason: collision with root package name */
    public float f12027a0;

    /* renamed from: b0  reason: collision with root package name */
    public float f12028b0;

    /* renamed from: c0  reason: collision with root package name */
    public float f12029c0;

    /* renamed from: d0  reason: collision with root package name */
    public float f12030d0;

    /* renamed from: e0  reason: collision with root package name */
    public float f12031e0;

    /* renamed from: f0  reason: collision with root package name */
    public float f12032f0;

    /* renamed from: g0  reason: collision with root package name */
    public final Context f12033g0;

    /* renamed from: h0  reason: collision with root package name */
    public final Paint f12034h0;

    /* renamed from: i0  reason: collision with root package name */
    public final Paint.FontMetrics f12035i0;

    /* renamed from: j0  reason: collision with root package name */
    public final RectF f12036j0;

    /* renamed from: k0  reason: collision with root package name */
    public final PointF f12037k0;

    /* renamed from: l0  reason: collision with root package name */
    public final Path f12038l0;

    /* renamed from: m0  reason: collision with root package name */
    public final C1478p f12039m0;

    /* renamed from: n0  reason: collision with root package name */
    public int f12040n0;

    /* renamed from: o0  reason: collision with root package name */
    public int f12041o0;

    /* renamed from: p0  reason: collision with root package name */
    public int f12042p0;

    /* renamed from: q0  reason: collision with root package name */
    public int f12043q0;

    /* renamed from: r0  reason: collision with root package name */
    public int f12044r0;

    /* renamed from: s0  reason: collision with root package name */
    public int f12045s0;

    /* renamed from: t0  reason: collision with root package name */
    public boolean f12046t0;

    /* renamed from: u0  reason: collision with root package name */
    public int f12047u0;

    /* renamed from: v0  reason: collision with root package name */
    public int f12048v0;

    /* renamed from: w0  reason: collision with root package name */
    public ColorFilter f12049w0;

    /* renamed from: x0  reason: collision with root package name */
    public PorterDuffColorFilter f12050x0;

    /* renamed from: y0  reason: collision with root package name */
    public ColorStateList f12051y0;

    /* renamed from: z0  reason: collision with root package name */
    public PorterDuff.Mode f12052z0;

    public f(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4, R.style.Widget_MaterialComponents_Chip_Action);
        this.f12003F = -1.0f;
        this.f12034h0 = new Paint(1);
        this.f12035i0 = new Paint.FontMetrics();
        this.f12036j0 = new RectF();
        this.f12037k0 = new PointF();
        this.f12038l0 = new Path();
        this.f12048v0 = 255;
        this.f12052z0 = PorterDuff.Mode.SRC_IN;
        this.f12000D0 = new WeakReference(null);
        j(context);
        this.f12033g0 = context;
        C1478p c1478p = new C1478p(this);
        this.f12039m0 = c1478p;
        this.f12010J = "";
        c1478p.f12876a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f11993I0;
        setState(iArr);
        if (!Arrays.equals(this.f11995A0, iArr)) {
            this.f11995A0 = iArr;
            if (E()) {
                x(getState(), iArr);
            }
        }
        this.f12004F0 = true;
        int i5 = com.google.android.material.ripple.a.f8061a;
        f11994J0.setTint(-1);
    }

    public static void F(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static boolean u(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean v(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public final void A(boolean z4) {
        if (this.f12016P != z4) {
            boolean E3 = E();
            this.f12016P = z4;
            boolean E4 = E();
            if (E3 != E4) {
                if (E4) {
                    p(this.f12017Q);
                } else {
                    F(this.f12017Q);
                }
                invalidateSelf();
                w();
            }
        }
    }

    public final void B(A2.g gVar) {
        C1478p c1478p = this.f12039m0;
        Context context = this.f12033g0;
        if (c1478p.f12881f != gVar) {
            c1478p.f12881f = gVar;
            TextPaint textPaint = c1478p.f12876a;
            C1476n c1476n = c1478p.f12877b;
            gVar.e(context, textPaint, c1476n);
            InterfaceC1477o interfaceC1477o = (InterfaceC1477o) c1478p.f12880e.get();
            if (interfaceC1477o != null) {
                textPaint.drawableState = interfaceC1477o.getState();
            }
            gVar.d(context, textPaint, c1476n);
            c1478p.f12879d = true;
            InterfaceC1477o interfaceC1477o2 = (InterfaceC1477o) c1478p.f12880e.get();
            if (interfaceC1477o2 != null) {
                interfaceC1477o2.a();
                interfaceC1477o2.onStateChange(interfaceC1477o2.getState());
            }
        }
    }

    public final boolean C() {
        return this.f12022V && this.f12023W != null && this.f12046t0;
    }

    public final boolean D() {
        return this.f12011K && this.f12012L != null;
    }

    public final boolean E() {
        return this.f12016P && this.f12017Q != null;
    }

    @Override // x2.InterfaceC1477o
    public final void a() {
        w();
        invalidateSelf();
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i4;
        int i5;
        int i6;
        int i7;
        float f4;
        int i8;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i4 = this.f12048v0) == 0) {
            return;
        }
        int saveLayerAlpha = i4 < 255 ? canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i4) : 0;
        if (!this.f12008H0) {
            this.f12034h0.setColor(this.f12040n0);
            this.f12034h0.setStyle(Paint.Style.FILL);
            this.f12036j0.set(bounds);
            canvas.drawRoundRect(this.f12036j0, t(), t(), this.f12034h0);
        }
        if (!this.f12008H0) {
            this.f12034h0.setColor(this.f12041o0);
            this.f12034h0.setStyle(Paint.Style.FILL);
            Paint paint = this.f12034h0;
            ColorFilter colorFilter = this.f12049w0;
            if (colorFilter == null) {
                colorFilter = this.f12050x0;
            }
            paint.setColorFilter(colorFilter);
            this.f12036j0.set(bounds);
            canvas.drawRoundRect(this.f12036j0, t(), t(), this.f12034h0);
        }
        if (this.f12008H0) {
            super.draw(canvas);
        }
        if (this.f12007H > 0.0f && !this.f12008H0) {
            this.f12034h0.setColor(this.f12043q0);
            this.f12034h0.setStyle(Paint.Style.STROKE);
            if (!this.f12008H0) {
                Paint paint2 = this.f12034h0;
                ColorFilter colorFilter2 = this.f12049w0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f12050x0;
                }
                paint2.setColorFilter(colorFilter2);
            }
            RectF rectF = this.f12036j0;
            float f5 = this.f12007H / 2.0f;
            rectF.set(bounds.left + f5, bounds.top + f5, bounds.right - f5, bounds.bottom - f5);
            float f6 = this.f12003F - (this.f12007H / 2.0f);
            canvas.drawRoundRect(this.f12036j0, f6, f6, this.f12034h0);
        }
        this.f12034h0.setColor(this.f12044r0);
        this.f12034h0.setStyle(Paint.Style.FILL);
        this.f12036j0.set(bounds);
        if (this.f12008H0) {
            RectF rectF2 = new RectF(bounds);
            Path path = this.f12038l0;
            p pVar = this.f177u;
            C2.h hVar = this.f160d;
            pVar.a(hVar.f137a, hVar.f146j, rectF2, this.f176t, path);
            g(canvas, this.f12034h0, this.f12038l0, this.f160d.f137a, i());
        } else {
            canvas.drawRoundRect(this.f12036j0, t(), t(), this.f12034h0);
        }
        if (D()) {
            q(bounds, this.f12036j0);
            RectF rectF3 = this.f12036j0;
            float f7 = rectF3.left;
            float f8 = rectF3.top;
            canvas.translate(f7, f8);
            this.f12012L.setBounds(0, 0, (int) this.f12036j0.width(), (int) this.f12036j0.height());
            this.f12012L.draw(canvas);
            canvas.translate(-f7, -f8);
        }
        if (C()) {
            q(bounds, this.f12036j0);
            RectF rectF4 = this.f12036j0;
            float f9 = rectF4.left;
            float f10 = rectF4.top;
            canvas.translate(f9, f10);
            this.f12023W.setBounds(0, 0, (int) this.f12036j0.width(), (int) this.f12036j0.height());
            this.f12023W.draw(canvas);
            canvas.translate(-f9, -f10);
        }
        if (!this.f12004F0 || this.f12010J == null) {
            i5 = saveLayerAlpha;
            i6 = 255;
            i7 = 0;
        } else {
            PointF pointF = this.f12037k0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            if (this.f12010J != null) {
                float r4 = r() + this.f12025Y + this.f12028b0;
                if (getLayoutDirection() == 0) {
                    pointF.x = bounds.left + r4;
                    align = Paint.Align.LEFT;
                } else {
                    pointF.x = bounds.right - r4;
                    align = Paint.Align.RIGHT;
                }
                this.f12039m0.f12876a.getFontMetrics(this.f12035i0);
                Paint.FontMetrics fontMetrics = this.f12035i0;
                pointF.y = bounds.centerY() - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            RectF rectF5 = this.f12036j0;
            rectF5.setEmpty();
            if (this.f12010J != null) {
                float r5 = r() + this.f12025Y + this.f12028b0;
                float s4 = s() + this.f12032f0 + this.f12029c0;
                if (getLayoutDirection() == 0) {
                    rectF5.left = bounds.left + r5;
                    rectF5.right = bounds.right - s4;
                } else {
                    rectF5.left = bounds.left + s4;
                    rectF5.right = bounds.right - r5;
                }
                rectF5.top = bounds.top;
                rectF5.bottom = bounds.bottom;
            }
            C1478p c1478p = this.f12039m0;
            if (c1478p.f12881f != null) {
                c1478p.f12876a.drawableState = getState();
                C1478p c1478p2 = this.f12039m0;
                c1478p2.f12881f.d(this.f12033g0, c1478p2.f12876a, c1478p2.f12877b);
            }
            this.f12039m0.f12876a.setTextAlign(align);
            C1478p c1478p3 = this.f12039m0;
            String charSequence = this.f12010J.toString();
            if (c1478p3.f12879d) {
                float measureText = charSequence != null ? c1478p3.f12876a.measureText((CharSequence) charSequence, 0, charSequence.length()) : 0.0f;
                c1478p3.f12878c = measureText;
                c1478p3.f12879d = false;
                f4 = measureText;
            } else {
                f4 = c1478p3.f12878c;
            }
            boolean z4 = Math.round(f4) > Math.round(this.f12036j0.width());
            if (z4) {
                i8 = canvas.save();
                canvas.clipRect(this.f12036j0);
            } else {
                i8 = 0;
            }
            CharSequence charSequence2 = this.f12010J;
            if (z4 && this.f12002E0 != null) {
                charSequence2 = TextUtils.ellipsize(charSequence2, this.f12039m0.f12876a, this.f12036j0.width(), this.f12002E0);
            }
            CharSequence charSequence3 = charSequence2;
            int length = charSequence3.length();
            PointF pointF2 = this.f12037k0;
            i5 = saveLayerAlpha;
            i6 = 255;
            i7 = 0;
            canvas.drawText(charSequence3, 0, length, pointF2.x, pointF2.y, this.f12039m0.f12876a);
            if (z4) {
                canvas.restoreToCount(i8);
            }
        }
        if (E()) {
            RectF rectF6 = this.f12036j0;
            rectF6.setEmpty();
            if (E()) {
                float f11 = this.f12032f0 + this.f12031e0;
                if (getLayoutDirection() == 0) {
                    float f12 = bounds.right - f11;
                    rectF6.right = f12;
                    rectF6.left = f12 - this.f12020T;
                } else {
                    float f13 = bounds.left + f11;
                    rectF6.left = f13;
                    rectF6.right = f13 + this.f12020T;
                }
                float exactCenterY = bounds.exactCenterY();
                float f14 = this.f12020T;
                float f15 = exactCenterY - (f14 / 2.0f);
                rectF6.top = f15;
                rectF6.bottom = f15 + f14;
            }
            RectF rectF7 = this.f12036j0;
            float f16 = rectF7.left;
            float f17 = rectF7.top;
            canvas.translate(f16, f17);
            this.f12017Q.setBounds(i7, i7, (int) this.f12036j0.width(), (int) this.f12036j0.height());
            int i9 = com.google.android.material.ripple.a.f8061a;
            this.f12018R.setBounds(this.f12017Q.getBounds());
            this.f12018R.jumpToCurrentState();
            this.f12018R.draw(canvas);
            canvas.translate(-f16, -f17);
        }
        if (this.f12048v0 < i6) {
            canvas.restoreToCount(i5);
        }
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f12048v0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f12049w0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f12001E;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float f4;
        float r4 = r() + this.f12025Y + this.f12028b0;
        C1478p c1478p = this.f12039m0;
        String charSequence = this.f12010J.toString();
        if (c1478p.f12879d) {
            float measureText = charSequence == null ? 0.0f : c1478p.f12876a.measureText((CharSequence) charSequence, 0, charSequence.length());
            c1478p.f12878c = measureText;
            c1478p.f12879d = false;
            f4 = measureText;
        } else {
            f4 = c1478p.f12878c;
        }
        return Math.min(Math.round(s() + f4 + r4 + this.f12029c0 + this.f12032f0), this.f12006G0);
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.f12008H0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f12001E, this.f12003F);
        } else {
            outline.setRoundRect(bounds, this.f12003F);
        }
        outline.setAlpha(this.f12048v0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (u(this.f11997C) || u(this.f11999D) || u(this.f12005G)) {
            return true;
        }
        if (this.f11996B0 && u(this.f11998C0)) {
            return true;
        }
        A2.g gVar = this.f12039m0.f12881f;
        if ((gVar == null || (colorStateList = gVar.f99j) == null || !colorStateList.isStateful()) ? false : true) {
            return true;
        }
        return (this.f12022V && this.f12023W != null && this.f12021U) || v(this.f12012L) || v(this.f12023W) || u(this.f12051y0);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i4) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i4);
        if (D()) {
            onLayoutDirectionChanged |= this.f12012L.setLayoutDirection(i4);
        }
        if (C()) {
            onLayoutDirectionChanged |= this.f12023W.setLayoutDirection(i4);
        }
        if (E()) {
            onLayoutDirectionChanged |= this.f12017Q.setLayoutDirection(i4);
        }
        if (onLayoutDirectionChanged) {
            invalidateSelf();
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i4) {
        boolean onLevelChange = super.onLevelChange(i4);
        if (D()) {
            onLevelChange |= this.f12012L.setLevel(i4);
        }
        if (C()) {
            onLevelChange |= this.f12023W.setLevel(i4);
        }
        if (E()) {
            onLevelChange |= this.f12017Q.setLevel(i4);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        if (this.f12008H0) {
            super.onStateChange(iArr);
        }
        return x(iArr, this.f11995A0);
    }

    public final void p(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        drawable.setLayoutDirection(getLayoutDirection());
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f12017Q) {
            if (drawable.isStateful()) {
                drawable.setState(this.f11995A0);
            }
            drawable.setTintList(this.f12019S);
            return;
        }
        Drawable drawable2 = this.f12012L;
        if (drawable == drawable2 && this.f12015O) {
            drawable2.setTintList(this.f12013M);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    public final void q(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (D() || C()) {
            float f4 = this.f12025Y + this.f12026Z;
            Drawable drawable = this.f12046t0 ? this.f12023W : this.f12012L;
            float f5 = this.f12014N;
            if (f5 <= 0.0f && drawable != null) {
                f5 = drawable.getIntrinsicWidth();
            }
            if (getLayoutDirection() == 0) {
                float f6 = rect.left + f4;
                rectF.left = f6;
                rectF.right = f6 + f5;
            } else {
                float f7 = rect.right - f4;
                rectF.right = f7;
                rectF.left = f7 - f5;
            }
            Drawable drawable2 = this.f12046t0 ? this.f12023W : this.f12012L;
            float f8 = this.f12014N;
            if (f8 <= 0.0f && drawable2 != null) {
                float ceil = (float) Math.ceil(TypedValue.applyDimension(1, 24, this.f12033g0.getResources().getDisplayMetrics()));
                if (drawable2.getIntrinsicHeight() <= ceil) {
                    ceil = drawable2.getIntrinsicHeight();
                }
                f8 = ceil;
            }
            float exactCenterY = rect.exactCenterY() - (f8 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + f8;
        }
    }

    public final float r() {
        if (D() || C()) {
            float f4 = this.f12026Z;
            Drawable drawable = this.f12046t0 ? this.f12023W : this.f12012L;
            float f5 = this.f12014N;
            if (f5 <= 0.0f && drawable != null) {
                f5 = drawable.getIntrinsicWidth();
            }
            return f5 + f4 + this.f12027a0;
        }
        return 0.0f;
    }

    public final float s() {
        if (E()) {
            return this.f12030d0 + this.f12020T + this.f12031e0;
        }
        return 0.0f;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j4);
        }
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        if (this.f12048v0 != i4) {
            this.f12048v0 = i4;
            invalidateSelf();
        }
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f12049w0 != colorFilter) {
            this.f12049w0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f12051y0 != colorStateList) {
            this.f12051y0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // C2.i, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f12052z0 != mode) {
            this.f12052z0 = mode;
            ColorStateList colorStateList = this.f12051y0;
            this.f12050x0 = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z4, boolean z5) {
        boolean visible = super.setVisible(z4, z5);
        if (D()) {
            visible |= this.f12012L.setVisible(z4, z5);
        }
        if (C()) {
            visible |= this.f12023W.setVisible(z4, z5);
        }
        if (E()) {
            visible |= this.f12017Q.setVisible(z4, z5);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public final float t() {
        return this.f12008H0 ? this.f160d.f137a.f201e.a(i()) : this.f12003F;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void w() {
        e eVar = (e) this.f12000D0.get();
        if (eVar != null) {
            eVar.a();
        }
    }

    public final boolean x(int[] iArr, int[] iArr2) {
        boolean z4;
        boolean z5;
        ColorStateList colorStateList;
        boolean onStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.f11997C;
        int e4 = e(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f12040n0) : 0);
        boolean z6 = true;
        if (this.f12040n0 != e4) {
            this.f12040n0 = e4;
            onStateChange = true;
        }
        ColorStateList colorStateList3 = this.f11999D;
        int e5 = e(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f12041o0) : 0);
        if (this.f12041o0 != e5) {
            this.f12041o0 = e5;
            onStateChange = true;
        }
        int h4 = E.a.h(e5, e4);
        if ((this.f12042p0 != h4) | (this.f160d.f139c == null)) {
            this.f12042p0 = h4;
            l(ColorStateList.valueOf(h4));
            onStateChange = true;
        }
        ColorStateList colorStateList4 = this.f12005G;
        int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f12043q0) : 0;
        if (this.f12043q0 != colorForState) {
            this.f12043q0 = colorForState;
            onStateChange = true;
        }
        int colorForState2 = (this.f11998C0 == null || !com.google.android.material.ripple.a.a(iArr)) ? 0 : this.f11998C0.getColorForState(iArr, this.f12044r0);
        if (this.f12044r0 != colorForState2) {
            this.f12044r0 = colorForState2;
            if (this.f11996B0) {
                onStateChange = true;
            }
        }
        A2.g gVar = this.f12039m0.f12881f;
        int colorForState3 = (gVar == null || (colorStateList = gVar.f99j) == null) ? 0 : colorStateList.getColorForState(iArr, this.f12045s0);
        if (this.f12045s0 != colorForState3) {
            this.f12045s0 = colorForState3;
            onStateChange = true;
        }
        int[] state = getState();
        if (state != null) {
            for (int i4 : state) {
                if (i4 == 16842912) {
                    z4 = true;
                    break;
                }
            }
        }
        z4 = false;
        boolean z7 = z4 && this.f12021U;
        if (this.f12046t0 == z7 || this.f12023W == null) {
            z5 = false;
        } else {
            float r4 = r();
            this.f12046t0 = z7;
            if (r4 != r()) {
                onStateChange = true;
                z5 = true;
            } else {
                z5 = false;
                onStateChange = true;
            }
        }
        ColorStateList colorStateList5 = this.f12051y0;
        int colorForState4 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.f12047u0) : 0;
        if (this.f12047u0 != colorForState4) {
            this.f12047u0 = colorForState4;
            ColorStateList colorStateList6 = this.f12051y0;
            PorterDuff.Mode mode = this.f12052z0;
            this.f12050x0 = (colorStateList6 == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
        } else {
            z6 = onStateChange;
        }
        if (v(this.f12012L)) {
            z6 |= this.f12012L.setState(iArr);
        }
        if (v(this.f12023W)) {
            z6 |= this.f12023W.setState(iArr);
        }
        if (v(this.f12017Q)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            z6 |= this.f12017Q.setState(iArr3);
        }
        int i5 = com.google.android.material.ripple.a.f8061a;
        if (v(this.f12018R)) {
            z6 |= this.f12018R.setState(iArr2);
        }
        if (z6) {
            invalidateSelf();
        }
        if (z5) {
            w();
        }
        return z6;
    }

    public final void y(boolean z4) {
        if (this.f12022V != z4) {
            boolean C3 = C();
            this.f12022V = z4;
            boolean C4 = C();
            if (C3 != C4) {
                if (C4) {
                    p(this.f12023W);
                } else {
                    F(this.f12023W);
                }
                invalidateSelf();
                w();
            }
        }
    }

    public final void z(boolean z4) {
        if (this.f12011K != z4) {
            boolean D3 = D();
            this.f12011K = z4;
            boolean D4 = D();
            if (D3 != D4) {
                if (D4) {
                    p(this.f12012L);
                } else {
                    F(this.f12012L);
                }
                invalidateSelf();
                w();
            }
        }
    }
}
