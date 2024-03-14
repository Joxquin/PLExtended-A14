package k;

import android.view.View;
import android.view.ViewConfiguration;
import j.InterfaceC1076G;
/* renamed from: k.u0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractView$OnTouchListenerC1165u0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final float f10986d;

    /* renamed from: e  reason: collision with root package name */
    public final int f10987e;

    /* renamed from: f  reason: collision with root package name */
    public final int f10988f;

    /* renamed from: g  reason: collision with root package name */
    public final View f10989g;

    /* renamed from: h  reason: collision with root package name */
    public RunnableC1163t0 f10990h;

    /* renamed from: i  reason: collision with root package name */
    public RunnableC1163t0 f10991i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f10992j;

    /* renamed from: k  reason: collision with root package name */
    public int f10993k;

    /* renamed from: l  reason: collision with root package name */
    public final int[] f10994l = new int[2];

    public AbstractView$OnTouchListenerC1165u0(View view) {
        this.f10989g = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f10986d = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f10987e = tapTimeout;
        this.f10988f = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        RunnableC1163t0 runnableC1163t0 = this.f10991i;
        if (runnableC1163t0 != null) {
            this.f10989g.removeCallbacks(runnableC1163t0);
        }
        RunnableC1163t0 runnableC1163t02 = this.f10990h;
        if (runnableC1163t02 != null) {
            this.f10989g.removeCallbacks(runnableC1163t02);
        }
    }

    public abstract InterfaceC1076G b();

    public abstract boolean c();

    public boolean d() {
        InterfaceC1076G b4 = b();
        if (b4 == null || !b4.b()) {
            return true;
        }
        b4.dismiss();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0084, code lost:
        if (r4 != 3) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0110  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k.AbstractView$OnTouchListenerC1165u0.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f10992j = false;
        this.f10993k = -1;
        RunnableC1163t0 runnableC1163t0 = this.f10990h;
        if (runnableC1163t0 != null) {
            this.f10989g.removeCallbacks(runnableC1163t0);
        }
    }
}
