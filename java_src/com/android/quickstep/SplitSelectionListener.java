package com.android.quickstep;
/* loaded from: classes.dex */
public interface SplitSelectionListener {

    /* loaded from: classes.dex */
    public final class DefaultImpls {
        public static void onSplitSelectionExit(SplitSelectionListener splitSelectionListener, boolean z4) {
        }
    }

    void onSplitSelectionActive();

    void onSplitSelectionConfirmed();

    void onSplitSelectionExit(boolean z4);
}
