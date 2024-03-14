package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.core.view.C0187y;
import com.android.systemui.shared.R;
import d.C0792a;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class P extends L {

    /* renamed from: d  reason: collision with root package name */
    public final SeekBar f10809d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f10810e;

    /* renamed from: f  reason: collision with root package name */
    public ColorStateList f10811f;

    /* renamed from: g  reason: collision with root package name */
    public PorterDuff.Mode f10812g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f10813h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f10814i;

    public P(SeekBar seekBar) {
        super(seekBar);
        this.f10811f = null;
        this.f10812g = null;
        this.f10813h = false;
        this.f10814i = false;
        this.f10809d = seekBar;
    }

    @Override // k.L
    public final void a(AttributeSet attributeSet, int i4) {
        super.a(attributeSet, R.attr.seekBarStyle);
        SeekBar seekBar = this.f10809d;
        Context context = seekBar.getContext();
        int[] iArr = C0792a.f8737g;
        R0 m4 = R0.m(context, attributeSet, iArr, R.attr.seekBarStyle);
        Context context2 = seekBar.getContext();
        TypedArray typedArray = m4.f10822b;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.H.b(seekBar, context2, iArr, attributeSet, typedArray, R.attr.seekBarStyle, 0);
        Drawable f4 = m4.f(0);
        if (f4 != null) {
            seekBar.setThumb(f4);
        }
        Drawable e4 = m4.e(1);
        Drawable drawable = this.f10810e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f10810e = e4;
        if (e4 != null) {
            e4.setCallback(seekBar);
            e4.setLayoutDirection(C0187y.c(seekBar));
            if (e4.isStateful()) {
                e4.setState(seekBar.getDrawableState());
            }
            c();
        }
        seekBar.invalidate();
        if (m4.l(3)) {
            this.f10812g = C1154o0.b(m4.h(3, -1), this.f10812g);
            this.f10814i = true;
        }
        if (m4.l(2)) {
            this.f10811f = m4.b(2);
            this.f10813h = true;
        }
        m4.n();
        c();
    }

    public final void c() {
        Drawable drawable = this.f10810e;
        if (drawable != null) {
            if (this.f10813h || this.f10814i) {
                Drawable mutate = drawable.mutate();
                this.f10810e = mutate;
                if (this.f10813h) {
                    mutate.setTintList(this.f10811f);
                }
                if (this.f10814i) {
                    this.f10810e.setTintMode(this.f10812g);
                }
                if (this.f10810e.isStateful()) {
                    this.f10810e.setState(this.f10809d.getDrawableState());
                }
            }
        }
    }

    public final void d(Canvas canvas) {
        if (this.f10810e != null) {
            SeekBar seekBar = this.f10809d;
            int max = seekBar.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f10810e.getIntrinsicWidth();
                int intrinsicHeight = this.f10810e.getIntrinsicHeight();
                int i4 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i5 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f10810e.setBounds(-i4, -i5, i4, i5);
                float width = ((seekBar.getWidth() - seekBar.getPaddingLeft()) - seekBar.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(seekBar.getPaddingLeft(), seekBar.getHeight() / 2);
                for (int i6 = 0; i6 <= max; i6++) {
                    this.f10810e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
