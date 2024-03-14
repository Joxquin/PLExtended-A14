package com.android.launcher3.model;

import android.app.prediction.AppPredictor;
import com.android.launcher3.model.QuickstepModelDelegate;
import java.util.List;
/* loaded from: classes.dex */
public final /* synthetic */ class Q0 implements AppPredictor.Callback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ QuickstepModelDelegate f4760a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ QuickstepModelDelegate.PredictorState f4761b;

    public /* synthetic */ Q0(QuickstepModelDelegate quickstepModelDelegate, QuickstepModelDelegate.PredictorState predictorState) {
        this.f4760a = quickstepModelDelegate;
        this.f4761b = predictorState;
    }

    public final void onTargetsAvailable(List list) {
        QuickstepModelDelegate quickstepModelDelegate = this.f4760a;
        QuickstepModelDelegate.PredictorState predictorState = this.f4761b;
        quickstepModelDelegate.getClass();
        if (predictorState.setTargets(list)) {
            return;
        }
        quickstepModelDelegate.mApp.getModel().enqueueModelUpdateTask(new PredictionUpdateTask(predictorState, list));
    }
}
