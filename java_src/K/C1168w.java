package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import f.C0832a;
/* renamed from: k.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1168w extends CheckedTextView {

    /* renamed from: d  reason: collision with root package name */
    public final C1170x f10999d;

    /* renamed from: e  reason: collision with root package name */
    public final C1162t f11000e;

    /* renamed from: f  reason: collision with root package name */
    public final C1134e0 f11001f;

    /* renamed from: g  reason: collision with root package name */
    public C1121E f11002g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0084 A[Catch: all -> 0x00b3, TryCatch #0 {all -> 0x00b3, blocks: (B:3:0x004a, B:5:0x0051, B:7:0x0057, B:11:0x0066, B:13:0x006c, B:15:0x0072, B:16:0x007d, B:18:0x0084, B:19:0x008b, B:21:0x0092), top: B:31:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0092 A[Catch: all -> 0x00b3, TRY_LEAVE, TryCatch #0 {all -> 0x00b3, blocks: (B:3:0x004a, B:5:0x0051, B:7:0x0057, B:11:0x0066, B:13:0x006c, B:15:0x0072, B:16:0x007d, B:18:0x0084, B:19:0x008b, B:21:0x0092), top: B:31:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1168w(android.content.Context r9, android.util.AttributeSet r10) {
        /*
            r8 = this;
            k.O0.a(r9)
            r0 = 2130968814(0x7f0400ee, float:1.7546292E38)
            r8.<init>(r9, r10, r0)
            android.content.Context r9 = r8.getContext()
            k.M0.a(r8, r9)
            k.e0 r9 = new k.e0
            r9.<init>(r8)
            r8.f11001f = r9
            r9.d(r10, r0)
            r9.b()
            k.t r9 = new k.t
            r9.<init>(r8)
            r8.f11000e = r9
            r9.d(r10, r0)
            k.x r9 = new k.x
            r9.<init>(r8)
            r8.f10999d = r9
            android.content.Context r9 = r8.getContext()
            int[] r3 = d.C0792a.f8742l
            k.R0 r9 = k.R0.m(r9, r10, r3, r0)
            android.content.Context r2 = r8.getContext()
            android.content.res.TypedArray r5 = r9.f10822b
            r7 = 0
            java.util.WeakHashMap r1 = androidx.core.view.J.f3079a
            r6 = 2130968814(0x7f0400ee, float:1.7546292E38)
            r1 = r8
            r4 = r10
            androidx.core.view.H.b(r1, r2, r3, r4, r5, r6, r7)
            r1 = 1
            boolean r2 = r9.l(r1)     // Catch: java.lang.Throwable -> Lb3
            r3 = 0
            if (r2 == 0) goto L63
            int r2 = r9.i(r1, r3)     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L63
            android.content.Context r4 = r8.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L63 java.lang.Throwable -> Lb3
            android.graphics.drawable.Drawable r2 = f.C0832a.a(r2, r4)     // Catch: android.content.res.Resources.NotFoundException -> L63 java.lang.Throwable -> Lb3
            r8.setCheckMarkDrawable(r2)     // Catch: android.content.res.Resources.NotFoundException -> L63 java.lang.Throwable -> Lb3
            goto L64
        L63:
            r1 = r3
        L64:
            if (r1 != 0) goto L7d
            boolean r1 = r9.l(r3)     // Catch: java.lang.Throwable -> Lb3
            if (r1 == 0) goto L7d
            int r1 = r9.i(r3, r3)     // Catch: java.lang.Throwable -> Lb3
            if (r1 == 0) goto L7d
            android.content.Context r2 = r8.getContext()     // Catch: java.lang.Throwable -> Lb3
            android.graphics.drawable.Drawable r1 = f.C0832a.a(r1, r2)     // Catch: java.lang.Throwable -> Lb3
            r8.setCheckMarkDrawable(r1)     // Catch: java.lang.Throwable -> Lb3
        L7d:
            r1 = 2
            boolean r2 = r9.l(r1)     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L8b
            android.content.res.ColorStateList r1 = r9.b(r1)     // Catch: java.lang.Throwable -> Lb3
            r8.setCheckMarkTintList(r1)     // Catch: java.lang.Throwable -> Lb3
        L8b:
            r1 = 3
            boolean r2 = r9.l(r1)     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L9f
            r2 = -1
            int r1 = r9.h(r1, r2)     // Catch: java.lang.Throwable -> Lb3
            r2 = 0
            android.graphics.PorterDuff$Mode r1 = k.C1154o0.b(r1, r2)     // Catch: java.lang.Throwable -> Lb3
            r8.setCheckMarkTintMode(r1)     // Catch: java.lang.Throwable -> Lb3
        L9f:
            r9.n()
            k.E r9 = r8.f11002g
            if (r9 != 0) goto Lad
            k.E r9 = new k.E
            r9.<init>(r8)
            r8.f11002g = r9
        Lad:
            k.E r8 = r8.f11002g
            r8.b(r10, r0)
            return
        Lb3:
            r8 = move-exception
            r9.n()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: k.C1168w.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1134e0 c1134e0 = this.f11001f;
        if (c1134e0 != null) {
            c1134e0.b();
        }
        C1162t c1162t = this.f11000e;
        if (c1162t != null) {
            c1162t.a();
        }
        C1170x c1170x = this.f10999d;
        if (c1170x != null) {
            c1170x.a();
        }
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return N.i.b(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C1122F.a(this, editorInfo, onCreateInputConnection);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        if (this.f11002g == null) {
            this.f11002g = new C1121E(this);
        }
        this.f11002g.c(z4);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f11000e;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f11000e;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.CheckedTextView
    public final void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C1170x c1170x = this.f10999d;
        if (c1170x != null) {
            if (c1170x.f11023f) {
                c1170x.f11023f = false;
                return;
            }
            c1170x.f11023f = true;
            c1170x.a();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f11001f;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f11001f;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i4) {
        super.setTextAppearance(context, i4);
        C1134e0 c1134e0 = this.f11001f;
        if (c1134e0 != null) {
            c1134e0.e(i4, context);
        }
    }

    @Override // android.widget.CheckedTextView
    public final void setCheckMarkDrawable(int i4) {
        setCheckMarkDrawable(C0832a.a(i4, getContext()));
    }
}
