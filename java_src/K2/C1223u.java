package k2;

import android.view.View;
import androidx.core.view.J;
import java.util.WeakHashMap;
/* renamed from: k2.u  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1223u {

    /* renamed from: a  reason: collision with root package name */
    public final View f11220a;

    /* renamed from: b  reason: collision with root package name */
    public int f11221b;

    /* renamed from: c  reason: collision with root package name */
    public int f11222c;

    /* renamed from: d  reason: collision with root package name */
    public int f11223d;

    /* renamed from: e  reason: collision with root package name */
    public int f11224e;

    public C1223u(View view) {
        this.f11220a = view;
    }

    public final void a() {
        int i4 = this.f11223d;
        View view = this.f11220a;
        int top = i4 - (view.getTop() - this.f11221b);
        WeakHashMap weakHashMap = J.f3079a;
        view.offsetTopAndBottom(top);
        view.offsetLeftAndRight(this.f11224e - (view.getLeft() - this.f11222c));
    }

    public final boolean b(int i4) {
        if (this.f11223d != i4) {
            this.f11223d = i4;
            a();
            return true;
        }
        return false;
    }
}
