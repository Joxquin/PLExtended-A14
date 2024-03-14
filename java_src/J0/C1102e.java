package j0;

import android.graphics.Rect;
import android.view.View;
import androidx.core.view.J;
import androidx.core.view.T;
import androidx.core.view.c0;
import androidx.core.view.r;
/* renamed from: j0.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1102e implements r {

    /* renamed from: d  reason: collision with root package name */
    public final Rect f10638d = new Rect();

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1111n f10639e;

    public C1102e(C1111n c1111n) {
        this.f10639e = c1111n;
    }

    @Override // androidx.core.view.r
    public final c0 b(View view, c0 c0Var) {
        c0 e4 = J.e(view, c0Var);
        if (e4.f3106a.m()) {
            return e4;
        }
        int b4 = e4.b();
        Rect rect = this.f10638d;
        rect.left = b4;
        rect.top = e4.d();
        rect.right = e4.c();
        rect.bottom = e4.a();
        C1111n c1111n = this.f10639e;
        int childCount = c1111n.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            c0 b5 = J.b(c1111n.getChildAt(i4), e4);
            rect.left = Math.min(b5.b(), rect.left);
            rect.top = Math.min(b5.d(), rect.top);
            rect.right = Math.min(b5.c(), rect.right);
            rect.bottom = Math.min(b5.a(), rect.bottom);
        }
        T t4 = new T(e4);
        t4.d(E.b.a(rect.left, rect.top, rect.right, rect.bottom));
        return t4.b();
    }
}
