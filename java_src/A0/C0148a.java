package a0;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: a0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0148a implements InterfaceC0151d {

    /* renamed from: a  reason: collision with root package name */
    public final Set f2380a;

    public C0148a(C0152e registry) {
        kotlin.jvm.internal.h.e(registry, "registry");
        this.f2380a = new LinkedHashSet();
        registry.c("androidx.savedstate.Restarter", this);
    }

    @Override // a0.InterfaceC0151d
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f2380a));
        return bundle;
    }
}
