package V0;

import com.android.launcher3.secondarydisplay.PinnedAppsAdapter;
import java.util.Set;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1792d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ PinnedAppsAdapter f1793e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Set f1794f;

    public /* synthetic */ f(PinnedAppsAdapter pinnedAppsAdapter, Set set, int i4) {
        this.f1792d = i4;
        this.f1793e = pinnedAppsAdapter;
        this.f1794f = set;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1792d) {
            case 0:
                PinnedAppsAdapter.c(this.f1793e, this.f1794f);
                return;
            default:
                PinnedAppsAdapter.e(this.f1793e, this.f1794f);
                return;
        }
    }
}
