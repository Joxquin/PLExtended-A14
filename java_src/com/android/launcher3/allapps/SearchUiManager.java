package com.android.launcher3.allapps;

import android.view.KeyEvent;
import com.android.launcher3.ExtendedEditText;
/* loaded from: classes.dex */
public interface SearchUiManager {
    default boolean getBackgroundVisibility() {
        return false;
    }

    ExtendedEditText getEditText();

    void initializeSearch(ActivityAllAppsContainerView activityAllAppsContainerView);

    default void preDispatchKeyEvent(KeyEvent keyEvent) {
    }

    default void prepareToFocusEditText(boolean z4) {
    }

    default void refreshResults() {
    }

    void resetSearch();

    default void setBackgroundVisibility(float f4, boolean z4) {
    }

    default void setFocusedResultTitle(CharSequence charSequence, CharSequence charSequence2, boolean z4) {
    }
}
