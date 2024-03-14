package com.android.launcher3.search;

import java.util.ArrayList;
/* loaded from: classes.dex */
public interface SearchCallback {
    void clearSearchResult();

    void onSearchResult(String str, ArrayList arrayList);

    default void onSearchResult(String str, ArrayList arrayList, int i4) {
        onSearchResult(str, arrayList);
    }
}
