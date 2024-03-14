package com.android.launcher3.allapps;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.util.FloatProperty;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.allapps.SearchTransitionController;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.config.FeatureFlags;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import y0.animation.InterpolatorC1488a;
import y0.e;
/* loaded from: classes.dex */
public final class SearchTransitionController {
    private final ActivityAllAppsContainerView mAllAppsContainerView;
    private ObjectAnimator mSearchToAzAnimator = null;
    private float mSearchToAzProgress = 1.0f;
    private boolean mSkipNextAnimationWithinAllApps;
    private static final Interpolator INTERPOLATOR_WITHIN_ALL_APPS = e.f12928B;
    private static final animation.InterpolatorC1488a INTERPOLATOR_TRANSITIONING_TO_ALL_APPS = e.f12941e;
    private static final FloatProperty SEARCH_TO_AZ_PROGRESS = new FloatProperty() { // from class: com.android.launcher3.allapps.SearchTransitionController.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(SearchTransitionController.d((SearchTransitionController) obj));
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            SearchTransitionController.e((SearchTransitionController) obj, f4);
        }
    };

    public SearchTransitionController(ActivityAllAppsContainerView activityAllAppsContainerView) {
        this.mAllAppsContainerView = activityAllAppsContainerView;
    }

    public static void a(SearchTransitionController searchTransitionController) {
        ActivityAllAppsContainerView activityAllAppsContainerView = searchTransitionController.mAllAppsContainerView;
        activityAllAppsContainerView.mHeader.setFloatingRowsCollapsed(false);
        activityAllAppsContainerView.mHeader.reset(false);
        activityAllAppsContainerView.getAppsRecyclerViewContainer().setTranslationY(0.0f);
    }

    public static void b(SearchTransitionController searchTransitionController, View view) {
        searchTransitionController.getClass();
        view.forceHasOverlappingRendering(false);
        view.setPivotY(0.0f);
        if (searchTransitionController.mSearchToAzProgress > 0.0f) {
            searchTransitionController.updateSearchRecyclerViewProgress();
            return;
        }
        view.setAlpha(1.0f);
        view.setScaleY(1.0f);
        view.setTranslationY(0.0f);
        ActivityAllAppsContainerView activityAllAppsContainerView = searchTransitionController.mAllAppsContainerView;
        int childAdapterPosition = activityAllAppsContainerView.getSearchRecyclerView().getChildAdapterPosition(view);
        if (childAdapterPosition != -1) {
            ((BaseAllAppsAdapter.AdapterItem) ((ArrayList) activityAllAppsContainerView.getSearchRecyclerView().mApps.getAdapterItems()).get(childAdapterPosition)).setDecorationFillAlpha(255);
        }
        if ((view instanceof ViewGroup) && FeatureFlags.ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES.get()) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                viewGroup.getChildAt(i4).setAlpha(1.0f);
            }
        }
        if (view.getBackground() != null) {
            view.getBackground().setAlpha(255);
        }
    }

    public static float d(SearchTransitionController searchTransitionController) {
        return searchTransitionController.mSearchToAzProgress;
    }

    public static void e(SearchTransitionController searchTransitionController, float f4) {
        searchTransitionController.mSearchToAzProgress = f4;
        int updateSearchRecyclerViewProgress = searchTransitionController.updateSearchRecyclerViewProgress();
        ActivityAllAppsContainerView activityAllAppsContainerView = searchTransitionController.mAllAppsContainerView;
        FloatingHeaderView floatingHeaderView = activityAllAppsContainerView.mHeader;
        int floatingRowsHeight = floatingHeaderView.getFloatingRowsHeight() + updateSearchRecyclerViewProgress;
        if (!floatingHeaderView.mTabsHidden) {
            floatingHeaderView.setTranslationY(updateSearchRecyclerViewProgress);
            floatingHeaderView.setAlpha(e.a(e.f12949m, f4, 0.8f, 1.0f));
            floatingRowsHeight += (activityAllAppsContainerView.getResources().getDimensionPixelOffset(R.dimen.all_apps_tabs_margin_top) + floatingHeaderView.getTabsAdditionalPaddingBottom()) - floatingHeaderView.getPaddingTop();
        }
        ViewGroup appsRecyclerViewContainer = activityAllAppsContainerView.getAppsRecyclerViewContainer();
        appsRecyclerViewContainer.setTranslationY(floatingRowsHeight);
        appsRecyclerViewContainer.setAlpha(e.a(e.f12949m, f4, 0.8f, 1.0f));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int updateSearchRecyclerViewProgress() {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.allapps.SearchTransitionController.updateSearchRecyclerViewProgress():int");
    }

    /* JADX WARN: Type inference failed for: r7v6, types: [D0.s] */
    public final void animateToSearchState(boolean z4, long j4, D0.a aVar) {
        float f4 = z4 ? 0.0f : 1.0f;
        ObjectAnimator objectAnimator = this.mSearchToAzAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.mSearchToAzAnimator = ObjectAnimator.ofFloat(this, SEARCH_TO_AZ_PROGRESS, f4);
        ActivityAllAppsContainerView activityAllAppsContainerView = this.mAllAppsContainerView;
        TimeInterpolator timeInterpolator = activityAllAppsContainerView.isInAllApps() ? INTERPOLATOR_WITHIN_ALL_APPS : INTERPOLATOR_TRANSITIONING_TO_ALL_APPS;
        if (this.mSkipNextAnimationWithinAllApps) {
            timeInterpolator = e.f12941e;
            this.mSkipNextAnimationWithinAllApps = false;
        }
        if (timeInterpolator == e.f12941e) {
            j4 = 0;
        }
        this.mSearchToAzAnimator.setDuration(j4).setInterpolator(timeInterpolator);
        this.mSearchToAzAnimator.addListener(AnimatorListeners.forEndCallback(new Runnable(this) { // from class: D0.r

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ SearchTransitionController f310e;

            {
                this.f310e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        this.f310e.mSearchToAzAnimator = null;
                        return;
                    default:
                        SearchTransitionController.a(this.f310e);
                        return;
                }
            }
        }));
        if (!z4) {
            this.mSearchToAzAnimator.addListener(AnimatorListeners.forSuccessCallback(new Runnable(this) { // from class: D0.r

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ SearchTransitionController f310e;

                {
                    this.f310e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (r2) {
                        case 0:
                            this.f310e.mSearchToAzAnimator = null;
                            return;
                        default:
                            SearchTransitionController.a(this.f310e);
                            return;
                    }
                }
            }));
        }
        this.mSearchToAzAnimator.addListener(AnimatorListeners.forSuccessCallback(aVar));
        activityAllAppsContainerView.mHeader.setFloatingRowsCollapsed(true);
        activityAllAppsContainerView.mHeader.setVisibility(0);
        FloatingHeaderView floatingHeaderView = activityAllAppsContainerView.mHeader;
        floatingHeaderView.mTabLayout.setVisibility(floatingHeaderView.mTabsHidden ? 8 : 0);
        activityAllAppsContainerView.getAppsRecyclerViewContainer().setVisibility(0);
        activityAllAppsContainerView.getSearchRecyclerView().setVisibility(0);
        activityAllAppsContainerView.getSearchRecyclerView().setChildAttachedConsumer(new L.a() { // from class: D0.s
            @Override // L.a
            public final void accept(Object obj) {
                SearchTransitionController.b(SearchTransitionController.this, (View) obj);
            }
        });
        this.mSearchToAzAnimator.start();
    }

    public final boolean isRunning() {
        return this.mSearchToAzAnimator != null;
    }

    public final void setSkipAnimationWithinAllApps() {
        this.mSkipNextAnimationWithinAllApps = true;
    }
}
