package com.android.systemui.navigationbar.buttons;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CanvasProperty;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Trace;
import android.view.RenderNodeAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import java.util.ArrayList;
import java.util.HashSet;
import m1.C1304a;
import m1.animation.InterpolatorC1305b;
/* loaded from: classes.dex */
public class KeyButtonRipple extends Drawable {

    /* renamed from: A  reason: collision with root package name */
    public static final Interpolator f6166A = new PathInterpolator(0.0f, 0.0f, 0.8f, 1.0f);

    /* renamed from: a  reason: collision with root package name */
    public final int f6167a;

    /* renamed from: b  reason: collision with root package name */
    public Paint f6168b;

    /* renamed from: c  reason: collision with root package name */
    public CanvasProperty f6169c;

    /* renamed from: d  reason: collision with root package name */
    public CanvasProperty f6170d;

    /* renamed from: e  reason: collision with root package name */
    public CanvasProperty f6171e;

    /* renamed from: f  reason: collision with root package name */
    public CanvasProperty f6172f;

    /* renamed from: g  reason: collision with root package name */
    public CanvasProperty f6173g;

    /* renamed from: h  reason: collision with root package name */
    public CanvasProperty f6174h;

    /* renamed from: i  reason: collision with root package name */
    public CanvasProperty f6175i;

    /* renamed from: l  reason: collision with root package name */
    public boolean f6178l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f6179m;

    /* renamed from: n  reason: collision with root package name */
    public int f6180n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f6181o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f6182p;

    /* renamed from: r  reason: collision with root package name */
    public boolean f6184r;

    /* renamed from: s  reason: collision with root package name */
    public final View f6185s;

    /* renamed from: j  reason: collision with root package name */
    public float f6176j = 0.0f;

    /* renamed from: k  reason: collision with root package name */
    public float f6177k = 1.0f;

    /* renamed from: q  reason: collision with root package name */
    public final animation.InterpolatorC1305b f6183q = new animation.InterpolatorC1305b();

    /* renamed from: t  reason: collision with root package name */
    public final Handler f6186t = new Handler();

    /* renamed from: u  reason: collision with root package name */
    public final HashSet f6187u = new HashSet();

    /* renamed from: v  reason: collision with root package name */
    public final ArrayList f6188v = new ArrayList();

    /* renamed from: w  reason: collision with root package name */
    public final C1304a f6189w = new C1304a("exitHardware");

    /* renamed from: x  reason: collision with root package name */
    public final C1304a f6190x = new C1304a("enterHardware");

    /* renamed from: y  reason: collision with root package name */
    public Type f6191y = Type.ROUNDED_RECT;

    /* renamed from: z  reason: collision with root package name */
    public final C1304a f6192z = new C1304a(this);

    /* loaded from: classes.dex */
    public enum Type {
        OVAL,
        ROUNDED_RECT
    }

    public KeyButtonRipple(Context context, View view, int i4) {
        this.f6167a = i4;
        this.f6180n = context.getResources().getDimensionPixelSize(i4);
        this.f6185s = view;
    }

    public final void a(String str, boolean z4) {
        if (Trace.isEnabled()) {
            Trace.instant(4096L, "KeyButtonRipple.endAnim: reason=" + str + " cancel=" + z4);
        }
        this.f6188v.addAll(this.f6187u);
        int size = this.f6188v.size();
        for (int i4 = 0; i4 < size; i4++) {
            Animator animator = (Animator) this.f6188v.get(i4);
            if (z4) {
                animator.cancel();
            } else {
                animator.end();
            }
        }
        this.f6188v.clear();
        this.f6187u.clear();
        this.f6186t.removeCallbacksAndMessages(null);
    }

    public final int b() {
        boolean e4 = e();
        Rect bounds = getBounds();
        return e4 ? bounds.width() : bounds.height();
    }

    public final Paint c() {
        if (this.f6168b == null) {
            Paint paint = new Paint();
            this.f6168b = paint;
            paint.setAntiAlias(true);
            this.f6168b.setColor(this.f6181o ? -16777216 : -1);
        }
        return this.f6168b;
    }

    public final int d() {
        return Math.min(e() ? getBounds().width() : getBounds().height(), this.f6180n);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean isHardwareAccelerated = canvas.isHardwareAccelerated();
        this.f6184r = isHardwareAccelerated;
        Type type = Type.ROUNDED_RECT;
        if (isHardwareAccelerated) {
            RecordingCanvas recordingCanvas = (RecordingCanvas) canvas;
            if (this.f6179m) {
                if (this.f6191y == type) {
                    recordingCanvas.drawRoundRect(this.f6169c, this.f6170d, this.f6171e, this.f6172f, this.f6173g, this.f6174h, this.f6175i);
                } else {
                    recordingCanvas.drawCircle(CanvasProperty.createFloat(getBounds().width() / 2), CanvasProperty.createFloat(getBounds().height() / 2), CanvasProperty.createFloat((Math.min(getBounds().width(), getBounds().height()) * 1.0f) / 2.0f), this.f6175i);
                }
            }
        } else if (this.f6176j > 0.0f) {
            Paint c4 = c();
            c4.setAlpha((int) (this.f6176j * 255.0f));
            float width = getBounds().width();
            float height = getBounds().height();
            boolean z4 = width > height;
            float d4 = d() * this.f6177k * 0.5f;
            float f4 = width * 0.5f;
            float f5 = height * 0.5f;
            float f6 = z4 ? d4 : f4;
            if (z4) {
                d4 = f5;
            }
            float f7 = z4 ? f5 : f4;
            if (this.f6191y == type) {
                canvas.drawRoundRect(f4 - f6, f5 - d4, f6 + f4, f5 + d4, f7, f7, c4);
                return;
            }
            canvas.save();
            canvas.translate(f4, f5);
            float min = Math.min(f6, d4);
            float f8 = -min;
            canvas.drawOval(f8, f8, min, min, c4);
            canvas.restore();
        }
    }

    public final boolean e() {
        return getBounds().width() > getBounds().height();
    }

    public float getGlowAlpha() {
        return this.f6176j;
    }

    public float getGlowScale() {
        return this.f6177k;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean hasFocusStateSpecified() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        a("jumpToCurrentState", false);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z4;
        int i4 = 0;
        while (true) {
            if (i4 >= iArr.length) {
                z4 = false;
                break;
            } else if (iArr[i4] == 16842919) {
                z4 = true;
                break;
            } else {
                i4++;
            }
        }
        if (z4 != this.f6178l) {
            boolean z5 = this.f6182p;
            if (z5 != this.f6181o && z4) {
                this.f6168b = null;
                this.f6181o = z5;
            }
            if (this.f6184r) {
                if (z4) {
                    a("enterHardware", true);
                    this.f6179m = true;
                    CanvasProperty createFloat = CanvasProperty.createFloat(b() / 2);
                    if (e()) {
                        this.f6169c = createFloat;
                    } else {
                        this.f6170d = createFloat;
                    }
                    RenderNodeAnimator renderNodeAnimator = new RenderNodeAnimator(e() ? this.f6169c : this.f6170d, (b() / 2) - ((d() * 1.35f) / 2.0f));
                    renderNodeAnimator.setDuration(350L);
                    renderNodeAnimator.setInterpolator(this.f6183q);
                    renderNodeAnimator.addListener(this.f6192z);
                    renderNodeAnimator.setTarget(this.f6185s);
                    CanvasProperty createFloat2 = CanvasProperty.createFloat(b() / 2);
                    if (e()) {
                        this.f6171e = createFloat2;
                    } else {
                        this.f6172f = createFloat2;
                    }
                    RenderNodeAnimator renderNodeAnimator2 = new RenderNodeAnimator(e() ? this.f6171e : this.f6172f, ((d() * 1.35f) / 2.0f) + (b() / 2));
                    renderNodeAnimator2.setDuration(350L);
                    renderNodeAnimator2.setInterpolator(this.f6183q);
                    renderNodeAnimator2.addListener(this.f6192z);
                    renderNodeAnimator2.addListener(this.f6190x);
                    renderNodeAnimator2.setTarget(this.f6185s);
                    if (e()) {
                        this.f6170d = CanvasProperty.createFloat(0.0f);
                        this.f6172f = CanvasProperty.createFloat(getBounds().height());
                        this.f6173g = CanvasProperty.createFloat(getBounds().height() / 2);
                        this.f6174h = CanvasProperty.createFloat(getBounds().height() / 2);
                    } else {
                        this.f6169c = CanvasProperty.createFloat(0.0f);
                        this.f6171e = CanvasProperty.createFloat(getBounds().width());
                        this.f6173g = CanvasProperty.createFloat(getBounds().width() / 2);
                        this.f6174h = CanvasProperty.createFloat(getBounds().width() / 2);
                    }
                    this.f6177k = 1.35f;
                    this.f6176j = this.f6181o ? 0.1f : 0.2f;
                    Paint c4 = c();
                    this.f6168b = c4;
                    c4.setAlpha((int) (this.f6176j * 255.0f));
                    this.f6175i = CanvasProperty.createPaint(this.f6168b);
                    renderNodeAnimator.start();
                    renderNodeAnimator2.start();
                    this.f6187u.add(renderNodeAnimator);
                    this.f6187u.add(renderNodeAnimator2);
                    invalidateSelf();
                } else {
                    this.f6175i = CanvasProperty.createPaint(c());
                    RenderNodeAnimator renderNodeAnimator3 = new RenderNodeAnimator(this.f6175i, 1, 0.0f);
                    renderNodeAnimator3.setDuration(450L);
                    renderNodeAnimator3.setInterpolator(f6166A);
                    renderNodeAnimator3.addListener(this.f6192z);
                    renderNodeAnimator3.addListener(this.f6189w);
                    renderNodeAnimator3.setTarget(this.f6185s);
                    renderNodeAnimator3.start();
                    this.f6187u.add(renderNodeAnimator3);
                    invalidateSelf();
                }
            } else if (z4) {
                a("enterSoftware", true);
                this.f6176j = this.f6181o ? 0.1f : 0.2f;
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "glowScale", 0.0f, 1.35f);
                ofFloat.setInterpolator(this.f6183q);
                ofFloat.setDuration(350L);
                ofFloat.addListener(this.f6192z);
                ofFloat.start();
                this.f6187u.add(ofFloat);
            } else {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "glowAlpha", this.f6176j, 0.0f);
                ofFloat2.setInterpolator(f6166A);
                ofFloat2.setDuration(450L);
                ofFloat2.addListener(this.f6192z);
                ofFloat2.start();
                this.f6187u.add(ofFloat2);
            }
            this.f6178l = z4;
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }

    public void setGlowAlpha(float f4) {
        this.f6176j = f4;
        invalidateSelf();
    }

    public void setGlowScale(float f4) {
        this.f6177k = f4;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z4, boolean z5) {
        boolean visible = super.setVisible(z4, z5);
        if (visible) {
            jumpToCurrentState();
        }
        return visible;
    }
}
