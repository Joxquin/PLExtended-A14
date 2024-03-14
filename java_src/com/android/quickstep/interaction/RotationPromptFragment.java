package com.android.quickstep.interaction;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class RotationPromptFragment extends GestureSandboxFragment {
    @Override // androidx.fragment.app.K
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.gesture_tutorial_rotation_prompt, viewGroup, false);
    }
}
