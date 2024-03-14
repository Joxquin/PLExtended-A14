package com.android.launcher3.states;

import E.a;
import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class HintState extends LauncherState {
    private static final int STATE_FLAGS = 74;

    public HintState(int i4, int i5) {
        super(i4, i5, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public final float getDepthUnchecked(Context context) {
        return 0.15f;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final int getTransitionDuration(Context context, boolean z4) {
        return 80;
    }

    @Override // com.android.launcher3.LauncherState
    public final LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        return new LauncherState.ScaleAndTranslation(0.92f, 0.0f, 0.0f);
    }

    @Override // com.android.launcher3.LauncherState
    public final int getWorkspaceScrimColor(Launcher launcher) {
        return a.k(GraphicsUtils.getAttrColor(R.attr.overviewScrimColor, launcher), 100);
    }
}
