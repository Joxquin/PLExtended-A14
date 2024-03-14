package L0;

import com.android.launcher3.hybridhotseat.HotseatEduController;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1021d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ HotseatEduController f1022e;

    public /* synthetic */ a(HotseatEduController hotseatEduController, int i4) {
        this.f1021d = i4;
        this.f1022e = hotseatEduController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1021d) {
            case 0:
                HotseatEduController.b(this.f1022e);
                return;
            default:
                HotseatEduController.c(this.f1022e);
                return;
        }
    }
}
