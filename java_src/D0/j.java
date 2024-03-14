package D0;

import com.android.launcher3.allapps.AllAppsTransitionController;
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f302d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AllAppsTransitionController f303e;

    public /* synthetic */ j(AllAppsTransitionController allAppsTransitionController, int i4) {
        this.f302d = i4;
        this.f303e = allAppsTransitionController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f302d) {
            case 0:
                AllAppsTransitionController.a(this.f303e);
                return;
            default:
                AllAppsTransitionController.c(this.f303e);
                return;
        }
    }
}
