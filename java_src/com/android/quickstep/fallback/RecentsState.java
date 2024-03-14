package com.android.quickstep.fallback;

import android.content.Context;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.uioverrides.states.OverviewModalTaskState;
import com.android.launcher3.uioverrides.states.SplitScreenSelectState;
import com.android.quickstep.RecentsActivity;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class RecentsState implements BaseState {
    private static final int FLAG_CLEAR_ALL_BUTTON = 8;
    private static final int FLAG_FULL_SCREEN = 16;
    private static final int FLAG_LIVE_TILE = 256;
    private static final int FLAG_MODAL = 4;
    private static final int FLAG_OVERVIEW_ACTIONS = 32;
    private static final int FLAG_OVERVIEW_UI = 512;
    private static final int FLAG_SCRIM = 128;
    private static final int FLAG_SHOW_AS_GRID = 64;
    private static final int FLAG_TASK_THUMBNAIL_SPLASH = 1024;
    private static final float NO_OFFSET = 0.0f;
    private static final float NO_SCALE = 1.0f;
    public static final RecentsState OVERVIEW_SPLIT_SELECT;
    private final int mFlags;
    public final int ordinal;
    public static final RecentsState DEFAULT = new RecentsState(0, (((((8 | 2) | 32) | 64) | 128) | 256) | 512);
    public static final RecentsState MODAL_TASK = new ModalState(1, ((((((8 | 2) | 32) | 4) | 64) | 128) | 256) | 512);
    public static final RecentsState BACKGROUND_APP = new BackgroundAppState(2, ((16 | 3) | 512) | 1024);
    public static final RecentsState HOME = new RecentsState(3, 0);
    public static final RecentsState BG_LAUNCHER = new LauncherState(4, 0);

    /* loaded from: classes.dex */
    class BackgroundAppState extends RecentsState {
        public BackgroundAppState(int i4, int i5) {
            super(i4, i5);
        }

        @Override // com.android.quickstep.fallback.RecentsState
        public float[] getOverviewScaleAndOffset(RecentsActivity recentsActivity) {
            return com.android.launcher3.uioverrides.states.BackgroundAppState.getOverviewScaleAndOffsetForBackgroundState(recentsActivity);
        }

        @Override // com.android.quickstep.fallback.RecentsState, com.android.launcher3.statemanager.BaseState
        public boolean shouldDisableRestore() {
            return hasFlag(2);
        }

        @Override // com.android.quickstep.fallback.RecentsState, com.android.launcher3.statemanager.BaseState
        public boolean shouldPreserveDataStateOnReapply() {
            return this instanceof SplitScreenSelectState;
        }
    }

    /* loaded from: classes.dex */
    class LauncherState extends RecentsState {
        public LauncherState(int i4, int i5) {
            super(i4, i5);
        }

        @Override // com.android.quickstep.fallback.RecentsState
        public float[] getOverviewScaleAndOffset(RecentsActivity recentsActivity) {
            return new float[]{1.0f, 1.0f};
        }

        @Override // com.android.quickstep.fallback.RecentsState, com.android.launcher3.statemanager.BaseState
        public boolean shouldDisableRestore() {
            return hasFlag(2);
        }

        @Override // com.android.quickstep.fallback.RecentsState, com.android.launcher3.statemanager.BaseState
        public boolean shouldPreserveDataStateOnReapply() {
            return this instanceof SplitScreenSelectState;
        }
    }

    /* loaded from: classes.dex */
    class ModalState extends RecentsState {
        public ModalState(int i4, int i5) {
            super(i4, i5);
        }

        @Override // com.android.quickstep.fallback.RecentsState
        public float[] getOverviewScaleAndOffset(RecentsActivity recentsActivity) {
            return OverviewModalTaskState.getOverviewScaleAndOffsetForModalState(recentsActivity);
        }

        @Override // com.android.quickstep.fallback.RecentsState, com.android.launcher3.statemanager.BaseState
        public boolean shouldDisableRestore() {
            return hasFlag(2);
        }

        @Override // com.android.quickstep.fallback.RecentsState, com.android.launcher3.statemanager.BaseState
        public boolean shouldPreserveDataStateOnReapply() {
            return this instanceof SplitScreenSelectState;
        }
    }

    static {
        com.android.launcher3.LauncherState launcherState = com.android.launcher3.LauncherState.NORMAL;
        OVERVIEW_SPLIT_SELECT = new RecentsState(5, 64 | 128 | 512 | 128 | 2);
    }

    public RecentsState(int i4, int i5) {
        this.ordinal = i4;
        this.mFlags = i5;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public boolean displayOverviewTasksAsGrid(DeviceProfile deviceProfile) {
        return hasFlag(FLAG_SHOW_AS_GRID) && deviceProfile.isTablet;
    }

    public float getOverviewModalness() {
        if (hasFlag(FLAG_MODAL)) {
            return 1.0f;
        }
        return NO_OFFSET;
    }

    public float[] getOverviewScaleAndOffset(RecentsActivity recentsActivity) {
        return new float[]{1.0f, NO_OFFSET};
    }

    public int getScrimColor(RecentsActivity recentsActivity) {
        if (hasFlag(FLAG_SCRIM)) {
            return GraphicsUtils.getAttrColor(R.attr.overviewScrimColor, recentsActivity);
        }
        return 0;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context, boolean z4) {
        return StaggeredWorkspaceAnim.DURATION_MS;
    }

    public boolean hasClearAllButton() {
        return hasFlag(FLAG_CLEAR_ALL_BUTTON);
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final boolean hasFlag(int i4) {
        return (this.mFlags & i4) != 0;
    }

    public boolean hasLiveTile() {
        return hasFlag(FLAG_LIVE_TILE);
    }

    public boolean hasOverviewActions() {
        return hasFlag(FLAG_OVERVIEW_ACTIONS);
    }

    public boolean isFullScreen() {
        return hasFlag(FLAG_FULL_SCREEN);
    }

    public boolean overviewUi() {
        return hasFlag(FLAG_OVERVIEW_UI);
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public boolean shouldDisableRestore() {
        return hasFlag(2);
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public boolean shouldPreserveDataStateOnReapply() {
        return this instanceof SplitScreenSelectState;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public boolean showTaskThumbnailSplash() {
        return hasFlag(FLAG_TASK_THUMBNAIL_SPLASH);
    }

    public String toString() {
        return "Ordinal-" + this.ordinal;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public RecentsState getHistoryForState(RecentsState recentsState) {
        return DEFAULT;
    }
}
