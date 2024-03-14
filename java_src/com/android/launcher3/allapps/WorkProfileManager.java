package com.android.launcher3.allapps;

import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.allapps.WorkProfileManager;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.Executors;
import com.android.launcher3.workprofile.PersonalWorkSlidingTabStrip;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class WorkProfileManager implements PersonalWorkSlidingTabStrip.OnActivePageChangedListener {
    private final ActivityAllAppsContainerView mAllApps;
    private int mCurrentState;
    private final Predicate mMatcher;
    private final StatsLogManager mStatsLogManager;
    private final UserManager mUserManager;
    private WorkModeSwitch mWorkModeSwitch;

    public WorkProfileManager(UserManager userManager, ActivityAllAppsContainerView activityAllAppsContainerView, StatsLogManager statsLogManager) {
        this.mUserManager = userManager;
        this.mAllApps = activityAllAppsContainerView;
        this.mMatcher = activityAllAppsContainerView.mPersonalMatcher.negate();
        this.mStatsLogManager = statsLogManager;
    }

    public static void a(WorkProfileManager workProfileManager) {
        workProfileManager.getClass();
        if (Utilities.ATLEAST_P && workProfileManager.mCurrentState == 1 && workProfileManager.mWorkModeSwitch.isEnabled()) {
            workProfileManager.mStatsLogManager.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_TURN_OFF_WORK_APPS_TAP);
            workProfileManager.setWorkProfileEnabled(false);
        }
    }

    public static /* synthetic */ void b(WorkProfileManager workProfileManager, boolean z4) {
        UserManager userManager = workProfileManager.mUserManager;
        for (UserHandle userHandle : userManager.getUserProfiles()) {
            if (!Process.myUserHandle().equals(userHandle)) {
                userManager.requestQuietModeEnabled(!z4, userHandle);
            }
        }
    }

    private void updateCurrentState(int i4) {
        this.mCurrentState = i4;
        ActivityAllAppsContainerView activityAllAppsContainerView = this.mAllApps;
        if (((ActivityAllAppsContainerView.AdapterHolder) activityAllAppsContainerView.mAH.get(1)) != null) {
            ((ActivityAllAppsContainerView.AdapterHolder) activityAllAppsContainerView.mAH.get(1)).mAppsList.updateAdapterItems();
        }
        if (this.mWorkModeSwitch != null) {
            int currentPage = activityAllAppsContainerView.getCurrentPage();
            WorkModeSwitch workModeSwitch = this.mWorkModeSwitch;
            if (workModeSwitch != null) {
                if (currentPage == 0 || currentPage == 2) {
                    workModeSwitch.animateVisibility(false);
                } else if (currentPage == 1 && this.mCurrentState == 1) {
                    workModeSwitch.animateVisibility(true);
                }
            }
        }
        int i5 = this.mCurrentState;
        if (i5 != 1) {
            if (i5 == 2) {
                detachWorkModeSwitch();
            }
        } else if (!activityAllAppsContainerView.getAppsStore().hasModelFlag(5)) {
            Log.e("WorkProfileManager", "unable to attach work mode switch; Missing required permissions");
        } else {
            if (this.mWorkModeSwitch == null) {
                this.mWorkModeSwitch = (WorkModeSwitch) activityAllAppsContainerView.getLayoutInflater().inflate(R.layout.work_mode_fab, (ViewGroup) activityAllAppsContainerView, false);
            }
            if (this.mWorkModeSwitch.getParent() == null) {
                activityAllAppsContainerView.addView(this.mWorkModeSwitch);
            }
            if (activityAllAppsContainerView.getCurrentPage() != 1) {
                this.mWorkModeSwitch.animateVisibility(false);
            }
            if (((ActivityAllAppsContainerView.AdapterHolder) activityAllAppsContainerView.mAH.get(1)) != null) {
                ((ActivityAllAppsContainerView.AdapterHolder) activityAllAppsContainerView.mAH.get(1)).applyPadding();
            }
            this.mWorkModeSwitch.setOnClickListener(new View.OnClickListener() { // from class: D0.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WorkProfileManager.a(WorkProfileManager.this);
                }
            });
        }
    }

    public final int addWorkItems(ArrayList arrayList) {
        int i4 = this.mCurrentState;
        if (i4 == 2) {
            arrayList.add(new BaseAllAppsAdapter.AdapterItem(32));
        } else {
            if (i4 == 1) {
                if (!(((Integer) LauncherPrefs.get(this.mAllApps.getContext()).get(LauncherPrefs.WORK_EDU_STEP)).intValue() != 0)) {
                    arrayList.add(new BaseAllAppsAdapter.AdapterItem(16));
                }
            }
        }
        return arrayList.size();
    }

    public final void detachWorkModeSwitch() {
        WorkModeSwitch workModeSwitch = this.mWorkModeSwitch;
        if (workModeSwitch != null) {
            ViewParent parent = workModeSwitch.getParent();
            ActivityAllAppsContainerView activityAllAppsContainerView = this.mAllApps;
            if (parent == activityAllAppsContainerView) {
                activityAllAppsContainerView.removeView(this.mWorkModeSwitch);
            }
        }
        this.mWorkModeSwitch = null;
    }

    public final Predicate getMatcher() {
        return this.mMatcher;
    }

    public final WorkModeSwitch getWorkModeSwitch() {
        return this.mWorkModeSwitch;
    }

    @Override // com.android.launcher3.workprofile.PersonalWorkSlidingTabStrip.OnActivePageChangedListener
    public final void onActivePageChanged(int i4) {
        WorkModeSwitch workModeSwitch = this.mWorkModeSwitch;
        if (workModeSwitch != null) {
            if (i4 == 0 || i4 == 2) {
                workModeSwitch.animateVisibility(false);
            } else if (i4 == 1 && this.mCurrentState == 1) {
                workModeSwitch.animateVisibility(true);
            }
        }
    }

    public final void reset() {
        updateCurrentState(this.mAllApps.getAppsStore().hasModelFlag(2) ^ true ? 1 : 2);
        WorkModeSwitch workModeSwitch = this.mWorkModeSwitch;
        if (workModeSwitch != null) {
            workModeSwitch.getImeInsets().setEmpty();
            this.mWorkModeSwitch.updateTranslationY();
        }
    }

    public final void setWorkProfileEnabled(final boolean z4) {
        updateCurrentState(3);
        Executors.UI_HELPER_EXECUTOR.post(new Runnable() { // from class: D0.u
            @Override // java.lang.Runnable
            public final void run() {
                WorkProfileManager.b(WorkProfileManager.this, z4);
            }
        });
    }

    public final boolean shouldShowWorkApps() {
        return this.mCurrentState != 2;
    }
}
