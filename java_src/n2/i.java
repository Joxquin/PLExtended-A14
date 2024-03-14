package n2;

import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* loaded from: classes.dex */
public final class i implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ j f11816d;

    public i(j jVar) {
        this.f11816d = jVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f11816d;
        jVar.f11818b = false;
        Q.i iVar = jVar.f11820d.f7760K;
        if (iVar != null && iVar.g()) {
            j jVar2 = this.f11816d;
            jVar2.a(jVar2.f11817a);
            return;
        }
        j jVar3 = this.f11816d;
        BottomSheetBehavior bottomSheetBehavior = jVar3.f11820d;
        if (bottomSheetBehavior.f7759J == 2) {
            bottomSheetBehavior.C(jVar3.f11817a);
        }
    }
}
