package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.core.view.O;
import e.C0827t;
import e.LayoutInflater$Factory2C0803D;
import j.C1097o;
import k.InterfaceC1150m0;
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public TypedValue f2586d;

    /* renamed from: e  reason: collision with root package name */
    public TypedValue f2587e;

    /* renamed from: f  reason: collision with root package name */
    public TypedValue f2588f;

    /* renamed from: g  reason: collision with root package name */
    public TypedValue f2589g;

    /* renamed from: h  reason: collision with root package name */
    public TypedValue f2590h;

    /* renamed from: i  reason: collision with root package name */
    public TypedValue f2591i;

    /* renamed from: j  reason: collision with root package name */
    public final Rect f2592j;

    /* renamed from: k  reason: collision with root package name */
    public C0827t f2593k;

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0827t c0827t = this.f2593k;
        if (c0827t != null) {
            c0827t.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0827t c0827t = this.f2593k;
        if (c0827t != null) {
            LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = c0827t.f8992e;
            InterfaceC1150m0 interfaceC1150m0 = layoutInflater$Factory2C0803D.f8833s;
            if (interfaceC1150m0 != null) {
                interfaceC1150m0.n();
            }
            if (layoutInflater$Factory2C0803D.f8838x != null) {
                layoutInflater$Factory2C0803D.f8827m.getDecorView().removeCallbacks(layoutInflater$Factory2C0803D.f8839y);
                if (layoutInflater$Factory2C0803D.f8838x.isShowing()) {
                    try {
                        layoutInflater$Factory2C0803D.f8838x.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                layoutInflater$Factory2C0803D.f8838x = null;
            }
            O o4 = layoutInflater$Factory2C0803D.f8840z;
            if (o4 != null) {
                o4.b();
            }
            C1097o c1097o = layoutInflater$Factory2C0803D.J(0).f8777h;
            if (c1097o != null) {
                c1097o.c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f2592j = new Rect();
    }
}
