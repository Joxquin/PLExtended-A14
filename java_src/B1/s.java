package b1;

import com.android.launcher3.uioverrides.QuickstepWidgetHolder;
import com.android.launcher3.widget.LauncherWidgetHolder;
/* loaded from: classes.dex */
public final /* synthetic */ class s implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4207d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ QuickstepWidgetHolder f4208e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ LauncherWidgetHolder.ProviderChangedListener f4209f;

    public /* synthetic */ s(QuickstepWidgetHolder quickstepWidgetHolder, LauncherWidgetHolder.ProviderChangedListener providerChangedListener, int i4) {
        this.f4207d = i4;
        this.f4208e = quickstepWidgetHolder;
        this.f4209f = providerChangedListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4207d) {
            case 0:
                this.f4208e.mProviderChangedListeners.add(this.f4209f);
                return;
            default:
                this.f4208e.mProviderChangedListeners.remove(this.f4209f);
                return;
        }
    }
}
