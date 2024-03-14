package androidx.recyclerview.widget;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class K0 {

    /* renamed from: a  reason: collision with root package name */
    public int f3822a;

    /* renamed from: b  reason: collision with root package name */
    public int f3823b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3824c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3825d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f3826e;

    /* renamed from: f  reason: collision with root package name */
    public int[] f3827f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f3828g;

    public K0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f3828g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f3822a = -1;
        this.f3823b = Integer.MIN_VALUE;
        this.f3824c = false;
        this.f3825d = false;
        this.f3826e = false;
        int[] iArr = this.f3827f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
