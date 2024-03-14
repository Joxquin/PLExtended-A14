package b0;

import androidx.slice.Slice;
import com.google.android.apps.nexuslauncher.allapps.C0691r0;
/* loaded from: classes.dex */
public final class i implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Slice f4167d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ j f4168e;

    public i(j jVar, Slice slice) {
        this.f4168e = jVar;
        this.f4167d = slice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4168e.f4169d.f4173c.f7249f.forEach(new C0691r0(2, this.f4167d));
    }
}
