package k;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
/* renamed from: k.y  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1172y {

    /* renamed from: a  reason: collision with root package name */
    public final CompoundButton f11026a;

    /* renamed from: b  reason: collision with root package name */
    public ColorStateList f11027b = null;

    /* renamed from: c  reason: collision with root package name */
    public PorterDuff.Mode f11028c = null;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11029d = false;

    /* renamed from: e  reason: collision with root package name */
    public boolean f11030e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f11031f;

    public C1172y(CompoundButton compoundButton) {
        this.f11026a = compoundButton;
    }

    public final void a() {
        CompoundButton compoundButton = this.f11026a;
        Drawable buttonDrawable = compoundButton.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.f11029d || this.f11030e) {
                Drawable mutate = buttonDrawable.mutate();
                if (this.f11029d) {
                    mutate.setTintList(this.f11027b);
                }
                if (this.f11030e) {
                    mutate.setTintMode(this.f11028c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0056 A[Catch: all -> 0x0075, TryCatch #1 {all -> 0x0075, blocks: (B:3:0x001c, B:5:0x0023, B:7:0x0029, B:11:0x0038, B:13:0x003e, B:15:0x0044, B:16:0x004f, B:18:0x0056, B:19:0x005d, B:21:0x0064), top: B:30:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064 A[Catch: all -> 0x0075, TRY_LEAVE, TryCatch #1 {all -> 0x0075, blocks: (B:3:0x001c, B:5:0x0023, B:7:0x0029, B:11:0x0038, B:13:0x003e, B:15:0x0044, B:16:0x004f, B:18:0x0056, B:19:0x005d, B:21:0x0064), top: B:30:0x001c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.util.AttributeSet r9, int r10) {
        /*
            r8 = this;
            android.widget.CompoundButton r8 = r8.f11026a
            android.content.Context r0 = r8.getContext()
            int[] r2 = d.C0792a.f8743m
            k.R0 r7 = k.R0.m(r0, r9, r2, r10)
            android.content.Context r1 = r8.getContext()
            android.content.res.TypedArray r4 = r7.f10822b
            r6 = 0
            java.util.WeakHashMap r0 = androidx.core.view.J.f3079a
            r0 = r8
            r3 = r9
            r5 = r10
            androidx.core.view.H.b(r0, r1, r2, r3, r4, r5, r6)
            r9 = 1
            boolean r10 = r7.l(r9)     // Catch: java.lang.Throwable -> L75
            r0 = 0
            if (r10 == 0) goto L35
            int r10 = r7.i(r9, r0)     // Catch: java.lang.Throwable -> L75
            if (r10 == 0) goto L35
            android.content.Context r1 = r8.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L35 java.lang.Throwable -> L75
            android.graphics.drawable.Drawable r10 = f.C0832a.a(r10, r1)     // Catch: android.content.res.Resources.NotFoundException -> L35 java.lang.Throwable -> L75
            r8.setButtonDrawable(r10)     // Catch: android.content.res.Resources.NotFoundException -> L35 java.lang.Throwable -> L75
            goto L36
        L35:
            r9 = r0
        L36:
            if (r9 != 0) goto L4f
            boolean r9 = r7.l(r0)     // Catch: java.lang.Throwable -> L75
            if (r9 == 0) goto L4f
            int r9 = r7.i(r0, r0)     // Catch: java.lang.Throwable -> L75
            if (r9 == 0) goto L4f
            android.content.Context r10 = r8.getContext()     // Catch: java.lang.Throwable -> L75
            android.graphics.drawable.Drawable r9 = f.C0832a.a(r9, r10)     // Catch: java.lang.Throwable -> L75
            r8.setButtonDrawable(r9)     // Catch: java.lang.Throwable -> L75
        L4f:
            r9 = 2
            boolean r10 = r7.l(r9)     // Catch: java.lang.Throwable -> L75
            if (r10 == 0) goto L5d
            android.content.res.ColorStateList r9 = r7.b(r9)     // Catch: java.lang.Throwable -> L75
            r8.setButtonTintList(r9)     // Catch: java.lang.Throwable -> L75
        L5d:
            r9 = 3
            boolean r10 = r7.l(r9)     // Catch: java.lang.Throwable -> L75
            if (r10 == 0) goto L71
            r10 = -1
            int r9 = r7.h(r9, r10)     // Catch: java.lang.Throwable -> L75
            r10 = 0
            android.graphics.PorterDuff$Mode r9 = k.C1154o0.b(r9, r10)     // Catch: java.lang.Throwable -> L75
            r8.setButtonTintMode(r9)     // Catch: java.lang.Throwable -> L75
        L71:
            r7.n()
            return
        L75:
            r8 = move-exception
            r7.n()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: k.C1172y.b(android.util.AttributeSet, int):void");
    }
}
