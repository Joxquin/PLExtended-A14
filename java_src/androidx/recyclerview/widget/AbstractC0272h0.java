package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;
/* renamed from: androidx.recyclerview.widget.h0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0272h0 {

    /* renamed from: a  reason: collision with root package name */
    public InterfaceC0268f0 f3944a = null;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f3945b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final long f3946c = 120;

    /* renamed from: d  reason: collision with root package name */
    public final long f3947d = 120;

    /* renamed from: e  reason: collision with root package name */
    public final long f3948e = 250;

    /* renamed from: f  reason: collision with root package name */
    public final long f3949f = 250;

    public static void b(E0 e02) {
        RecyclerView recyclerView;
        int i4 = e02.mFlags & 14;
        if (e02.isInvalid() || (i4 & 4) != 0 || (recyclerView = e02.mOwnerRecyclerView) == null) {
            return;
        }
        recyclerView.getAdapterPositionInRecyclerView(e02);
    }

    public abstract boolean a(E0 e02, E0 e03, C0270g0 c0270g0, C0270g0 c0270g02);

    public final void c(E0 e02) {
        InterfaceC0268f0 interfaceC0268f0 = this.f3944a;
        if (interfaceC0268f0 != null) {
            Y y4 = (Y) interfaceC0268f0;
            y4.getClass();
            e02.setIsRecyclable(true);
            if (e02.mShadowedHolder != null && e02.mShadowingHolder == null) {
                e02.mShadowedHolder = null;
            }
            e02.mShadowingHolder = null;
            if ((e02.mFlags & 16) != 0) {
                return;
            }
            RecyclerView recyclerView = y4.f3917a;
            View view = e02.itemView;
            if (recyclerView.removeAnimatingView(view) || !e02.isTmpDetached()) {
                return;
            }
            recyclerView.removeDetachedView(view, false);
        }
    }

    public abstract void d(E0 e02);

    public abstract void e();

    public abstract boolean f();
}
