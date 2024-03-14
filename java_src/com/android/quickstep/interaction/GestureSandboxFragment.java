package com.android.quickstep.interaction;

import androidx.fragment.app.K;
import androidx.fragment.app.P;
/* loaded from: classes.dex */
public abstract class GestureSandboxFragment extends K {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() {
        P activity = getActivity();
        if (activity != null) {
            activity.setResult(-1);
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAttachedToWindow() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDetachedFromWindow() {
    }

    public GestureSandboxFragment recreateFragment() {
        return null;
    }

    public boolean shouldDisableSystemGestures() {
        return true;
    }
}
