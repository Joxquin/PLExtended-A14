package com.android.launcher3.widget.picker.search;

import com.android.launcher3.popup.PopupDataProvider;
/* loaded from: classes.dex */
public interface WidgetsSearchBar {
    void clearSearchBarFocus();

    void initialize(PopupDataProvider popupDataProvider, SearchModeListener searchModeListener);

    boolean isSearchBarFocused();

    void reset();
}
