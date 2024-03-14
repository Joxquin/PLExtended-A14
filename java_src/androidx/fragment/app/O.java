package androidx.fragment.app;

import a0.C0152e;
import a0.InterfaceC0154g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import androidx.core.view.InterfaceC0169f;
import androidx.core.view.InterfaceC0174k;
import androidx.lifecycle.AbstractC0247m;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class O extends W implements C.c, C.d, B.i, B.j, androidx.lifecycle.V, androidx.activity.t, androidx.activity.result.i, InterfaceC0154g, v0, InterfaceC0169f {

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ P f3319h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O(P p4) {
        super(p4);
        this.f3319h = p4;
    }

    @Override // androidx.fragment.app.v0
    public final void a(K k4) {
        this.f3319h.onAttachFragment(k4);
    }

    @Override // androidx.core.view.InterfaceC0169f
    public final void addMenuProvider(InterfaceC0174k interfaceC0174k) {
        this.f3319h.addMenuProvider(interfaceC0174k);
    }

    @Override // C.c
    public final void addOnConfigurationChangedListener(L.a aVar) {
        this.f3319h.addOnConfigurationChangedListener(aVar);
    }

    @Override // B.i
    public final void addOnMultiWindowModeChangedListener(L.a aVar) {
        this.f3319h.addOnMultiWindowModeChangedListener(aVar);
    }

    @Override // B.j
    public final void addOnPictureInPictureModeChangedListener(L.a aVar) {
        this.f3319h.addOnPictureInPictureModeChangedListener(aVar);
    }

    @Override // C.d
    public final void addOnTrimMemoryListener(L.a aVar) {
        this.f3319h.addOnTrimMemoryListener(aVar);
    }

    @Override // androidx.fragment.app.U
    public final View b(int i4) {
        return this.f3319h.findViewById(i4);
    }

    @Override // androidx.fragment.app.U
    public final boolean c() {
        Window window = this.f3319h.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // androidx.fragment.app.W
    public final void d(PrintWriter printWriter, String[] strArr) {
        this.f3319h.dump("  ", null, printWriter, strArr);
    }

    @Override // androidx.fragment.app.W
    public final P e() {
        return this.f3319h;
    }

    @Override // androidx.fragment.app.W
    public final LayoutInflater f() {
        P p4 = this.f3319h;
        return p4.getLayoutInflater().cloneInContext(p4);
    }

    @Override // androidx.fragment.app.W
    public final boolean g(String str) {
        Object obj = B.c.f105a;
        return this.f3319h.shouldShowRequestPermissionRationale(str);
    }

    @Override // androidx.activity.result.i
    public final androidx.activity.result.h getActivityResultRegistry() {
        return this.f3319h.getActivityResultRegistry();
    }

    @Override // androidx.lifecycle.InterfaceC0251q
    public final AbstractC0247m getLifecycle() {
        return this.f3319h.mFragmentLifecycleRegistry;
    }

    @Override // androidx.activity.t
    public final androidx.activity.s getOnBackPressedDispatcher() {
        return this.f3319h.getOnBackPressedDispatcher();
    }

    @Override // a0.InterfaceC0154g
    public final C0152e getSavedStateRegistry() {
        return this.f3319h.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.V
    public final androidx.lifecycle.U getViewModelStore() {
        return this.f3319h.getViewModelStore();
    }

    @Override // androidx.fragment.app.W
    public final void h() {
        this.f3319h.invalidateMenu();
    }

    @Override // androidx.core.view.InterfaceC0169f
    public final void removeMenuProvider(InterfaceC0174k interfaceC0174k) {
        this.f3319h.removeMenuProvider(interfaceC0174k);
    }

    @Override // C.c
    public final void removeOnConfigurationChangedListener(L.a aVar) {
        this.f3319h.removeOnConfigurationChangedListener(aVar);
    }

    @Override // B.i
    public final void removeOnMultiWindowModeChangedListener(L.a aVar) {
        this.f3319h.removeOnMultiWindowModeChangedListener(aVar);
    }

    @Override // B.j
    public final void removeOnPictureInPictureModeChangedListener(L.a aVar) {
        this.f3319h.removeOnPictureInPictureModeChangedListener(aVar);
    }

    @Override // C.d
    public final void removeOnTrimMemoryListener(L.a aVar) {
        this.f3319h.removeOnTrimMemoryListener(aVar);
    }
}
