package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class I0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f3291d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3292e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3293f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3294g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3295h;

    public I0(int i4, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f3291d = i4;
        this.f3292e = arrayList;
        this.f3293f = arrayList2;
        this.f3294g = arrayList3;
        this.f3295h = arrayList4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (int i4 = 0; i4 < this.f3291d; i4++) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            androidx.core.view.D.m((View) this.f3292e.get(i4), (String) this.f3293f.get(i4));
            androidx.core.view.D.m((View) this.f3294g.get(i4), (String) this.f3295h.get(i4));
        }
    }
}
