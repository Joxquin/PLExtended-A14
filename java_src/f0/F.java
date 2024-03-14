package f0;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.slice.SliceItem;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class F extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public M f9073d;

    /* renamed from: e  reason: collision with root package name */
    public int f9074e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f9075f;

    /* renamed from: g  reason: collision with root package name */
    public long f9076g;

    /* renamed from: h  reason: collision with root package name */
    public int f9077h;

    /* renamed from: i  reason: collision with root package name */
    public int f9078i;

    /* renamed from: j  reason: collision with root package name */
    public int f9079j;

    /* renamed from: k  reason: collision with root package name */
    public int f9080k;

    /* renamed from: l  reason: collision with root package name */
    public E f9081l;

    /* renamed from: m  reason: collision with root package name */
    public J f9082m;

    /* renamed from: n  reason: collision with root package name */
    public C0850q f9083n;

    /* renamed from: o  reason: collision with root package name */
    public O f9084o;

    public F(Context context) {
        super(context);
        this.f9074e = -1;
        this.f9076g = -1L;
    }

    public Set a() {
        return null;
    }

    public final int b() {
        O o4 = this.f9084o;
        if (o4 != null) {
            return o4.f9134c;
        }
        return 2;
    }

    public abstract void c();

    public void d(SliceItem sliceItem) {
    }

    public void e(boolean z4) {
    }

    public void f(int i4, int i5, int i6, int i7) {
        this.f9077h = i4;
        this.f9078i = i5;
        this.f9079j = i6;
        this.f9080k = i7;
    }

    public void g(long j4) {
        this.f9076g = j4;
    }

    public void h(Set set) {
    }

    public void i(O o4) {
        this.f9084o = o4;
    }

    public void j(boolean z4) {
        this.f9075f = z4;
    }

    public void k(M m4) {
        this.f9073d = m4;
    }

    public void l(List list) {
    }

    public void m(C0843j c0843j) {
    }

    public void n(G g4, boolean z4, int i4, int i5, M m4) {
    }

    public void o(J j4, C0850q c0850q) {
        this.f9082m = j4;
        this.f9083n = c0850q;
    }

    public void p(int i4) {
        this.f9074e = i4;
    }

    public F(Context context, AttributeSet attributeSet) {
        this(context);
    }
}
