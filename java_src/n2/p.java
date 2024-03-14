package n2;

import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import androidx.core.view.D;
import androidx.core.view.J;
import androidx.core.view.c0;
import androidx.core.view.d0;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.WeakHashMap;
import s2.C1394a;
import x2.C1468f;
/* loaded from: classes.dex */
public final class p extends f {

    /* renamed from: a  reason: collision with root package name */
    public final Boolean f11825a;

    /* renamed from: b  reason: collision with root package name */
    public final c0 f11826b;

    /* renamed from: c  reason: collision with root package name */
    public Window f11827c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11828d;

    public p(View view, c0 c0Var) {
        ColorStateList b4;
        this.f11826b = c0Var;
        C2.i iVar = BottomSheetBehavior.v(view).f7785h;
        if (iVar != null) {
            b4 = iVar.f160d.f139c;
        } else {
            WeakHashMap weakHashMap = J.f3079a;
            b4 = D.b(view);
        }
        if (b4 != null) {
            this.f11825a = Boolean.valueOf(C1394a.c(b4.getDefaultColor()));
        } else if (view.getBackground() instanceof ColorDrawable) {
            this.f11825a = Boolean.valueOf(C1394a.c(((ColorDrawable) view.getBackground()).getColor()));
        } else {
            this.f11825a = null;
        }
    }

    @Override // n2.f
    public final void a(View view) {
        d(view);
    }

    @Override // n2.f
    public final void b(View view) {
        d(view);
    }

    @Override // n2.f
    public final void c(View view, int i4) {
        d(view);
    }

    public final void d(View view) {
        int top = view.getTop();
        c0 c0Var = this.f11826b;
        if (top < c0Var.d()) {
            Window window = this.f11827c;
            if (window != null) {
                Boolean bool = this.f11825a;
                C1468f.a(window, bool == null ? this.f11828d : bool.booleanValue());
            }
            view.setPadding(view.getPaddingLeft(), c0Var.d() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
        } else if (view.getTop() != 0) {
            Window window2 = this.f11827c;
            if (window2 != null) {
                C1468f.a(window2, this.f11828d);
            }
            view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    public final void e(Window window) {
        if (this.f11827c == window) {
            return;
        }
        this.f11827c = window;
        if (window != null) {
            window.getDecorView();
            this.f11828d = (new d0(window).f3108a.getSystemBarsAppearance() & 8) != 0;
        }
    }
}
