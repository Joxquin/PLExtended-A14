package androidx.activity;
/* loaded from: classes.dex */
public final class r implements a {

    /* renamed from: d  reason: collision with root package name */
    public final p f2450d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ s f2451e;

    public r(s sVar, p pVar) {
        this.f2451e = sVar;
        this.f2450d = pVar;
    }

    @Override // androidx.activity.a
    public final void cancel() {
        s sVar = this.f2451e;
        kotlin.collections.j jVar = sVar.f2479b;
        p pVar = this.f2450d;
        jVar.remove(pVar);
        pVar.getClass();
        pVar.f2447b.remove(this);
        pVar.f2448c = null;
        sVar.c();
    }
}
