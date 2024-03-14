package androidx.recyclerview.widget;
/* loaded from: classes.dex */
public final class J0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f3817d;

    public J0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f3817d = staggeredGridLayoutManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3817d.b();
    }
}
