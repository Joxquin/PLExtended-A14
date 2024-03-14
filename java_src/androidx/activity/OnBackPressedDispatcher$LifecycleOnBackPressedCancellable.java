package androidx.activity;

import androidx.fragment.app.C0200f0;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.InterfaceC0249o;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$Event;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements InterfaceC0249o, a {

    /* renamed from: d  reason: collision with root package name */
    public final AbstractC0247m f2417d;

    /* renamed from: e  reason: collision with root package name */
    public final p f2418e;

    /* renamed from: f  reason: collision with root package name */
    public r f2419f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ s f2420g;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(s sVar, AbstractC0247m abstractC0247m, C0200f0 onBackPressedCallback) {
        kotlin.jvm.internal.h.e(onBackPressedCallback, "onBackPressedCallback");
        this.f2420g = sVar;
        this.f2417d = abstractC0247m;
        this.f2418e = onBackPressedCallback;
        abstractC0247m.a(this);
    }

    @Override // androidx.lifecycle.InterfaceC0249o
    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event != Lifecycle$Event.ON_START) {
            if (lifecycle$Event != Lifecycle$Event.ON_STOP) {
                if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            }
            r rVar = this.f2419f;
            if (rVar != null) {
                rVar.cancel();
                return;
            }
            return;
        }
        s sVar = this.f2420g;
        sVar.getClass();
        p onBackPressedCallback = this.f2418e;
        kotlin.jvm.internal.h.e(onBackPressedCallback, "onBackPressedCallback");
        sVar.f2479b.addLast(onBackPressedCallback);
        r rVar2 = new r(sVar, onBackPressedCallback);
        onBackPressedCallback.f2447b.add(rVar2);
        sVar.c();
        onBackPressedCallback.f2448c = sVar.f2480c;
        this.f2419f = rVar2;
    }

    @Override // androidx.activity.a
    public final void cancel() {
        this.f2417d.c(this);
        p pVar = this.f2418e;
        pVar.getClass();
        pVar.f2447b.remove(this);
        r rVar = this.f2419f;
        if (rVar != null) {
            rVar.cancel();
        }
        this.f2419f = null;
    }
}
