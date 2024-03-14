package V1;

import android.app.prediction.AppPredictionContext;
import android.app.prediction.AppPredictionManager;
import android.app.prediction.AppPredictor;
import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.app.prediction.AppTargetId;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final Context f1838a;

    /* renamed from: b  reason: collision with root package name */
    public AppPredictor f1839b;

    /* renamed from: c  reason: collision with root package name */
    public AppPredictor.Callback f1840c;

    public l(Context context) {
        this.f1838a = context;
    }

    public final void a(f fVar, IntentFilter intentFilter) {
        c();
        Bundle bundle = new Bundle();
        bundle.putParcelable("intent_filter", intentFilter);
        Context context = this.f1838a;
        AppPredictor createAppPredictionSession = ((AppPredictionManager) context.getSystemService(AppPredictionManager.class)).createAppPredictionSession(new AppPredictionContext.Builder(context).setUiSurface("share").setPredictedTargetCount(4).setExtras(bundle).build());
        this.f1839b = createAppPredictionSession;
        this.f1840c = fVar;
        createAppPredictionSession.registerPredictionUpdates(Executors.MAIN_EXECUTOR, fVar);
        this.f1839b.requestPredictionUpdate();
    }

    public final void b(AppTarget appTarget) {
        AppPredictor appPredictor;
        if (appTarget == null || (appPredictor = this.f1839b) == null) {
            return;
        }
        appPredictor.notifyAppTargetEvent(new AppTargetEvent.Builder(appTarget, 1).setLaunchLocation("direct_share").build());
        String className = appTarget.getClassName();
        String packageName = appTarget.getPackageName();
        this.f1839b.notifyAppTargetEvent(new AppTargetEvent.Builder(new AppTarget.Builder(new AppTargetId(new ComponentName(packageName, className).toString()), packageName, appTarget.getUser()).setClassName(className).build(), 1).build());
    }

    public final void c() {
        AppPredictor appPredictor = this.f1839b;
        if (appPredictor != null) {
            AppPredictor.Callback callback = this.f1840c;
            if (callback != null) {
                appPredictor.unregisterPredictionUpdates(callback);
                this.f1840c = null;
            }
            this.f1839b.destroy();
            this.f1839b = null;
        }
    }
}
