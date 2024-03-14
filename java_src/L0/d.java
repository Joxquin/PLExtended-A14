package L0;

import com.android.launcher3.hybridhotseat.HotseatPredictionController;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1026d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ HotseatPredictionController f1027e;

    public /* synthetic */ d(HotseatPredictionController hotseatPredictionController, int i4) {
        this.f1026d = i4;
        this.f1027e = hotseatPredictionController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1026d) {
            case 0:
                HotseatPredictionController.d(this.f1027e);
                return;
            case 1:
                HotseatPredictionController.c(this.f1027e);
                return;
            case 2:
                HotseatPredictionController.e(this.f1027e);
                return;
            default:
                HotseatPredictionController.b(this.f1027e);
                return;
        }
    }
}
