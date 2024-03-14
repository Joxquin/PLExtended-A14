package com.android.launcher3.secondarydisplay;

import android.content.Context;
import com.android.launcher3.appprediction.AppsDividerView;
import com.android.launcher3.appprediction.PredictionRowView;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.views.ActivityContext;
/* loaded from: classes.dex */
public final class SecondaryDisplayPredictionsImpl extends SecondaryDisplayPredictions {
    private final ActivityContext mActivityContext;

    public SecondaryDisplayPredictionsImpl(Context context) {
        this.mActivityContext = (ActivityContext) ActivityContext.lookupContext(context);
    }

    @Override // com.android.launcher3.secondarydisplay.SecondaryDisplayPredictions
    public final void setPredictedApps(BgDataModel.FixedContainerItems fixedContainerItems) {
        ((PredictionRowView) this.mActivityContext.getAppsView().getFloatingHeaderView().findFixedRowByType(PredictionRowView.class)).setPredictedApps(fixedContainerItems.items);
    }

    @Override // com.android.launcher3.secondarydisplay.SecondaryDisplayPredictions
    public final void updateAppDivider() {
        ActivityContext activityContext = this.mActivityContext;
        OnboardingPrefs onboardingPrefs = activityContext.getOnboardingPrefs();
        if (onboardingPrefs != null) {
            ((AppsDividerView) activityContext.getAppsView().getFloatingHeaderView().findFixedRowByType(AppsDividerView.class)).setShowAllAppsLabel(!onboardingPrefs.hasReachedMaxCount(OnboardingPrefs.ALL_APPS_VISITED_COUNT));
            onboardingPrefs.incrementEventCount(OnboardingPrefs.ALL_APPS_VISITED_COUNT);
        }
    }
}
