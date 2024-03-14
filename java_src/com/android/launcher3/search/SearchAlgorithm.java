package com.android.launcher3.search;
/* loaded from: classes.dex */
public interface SearchAlgorithm {
    void cancel(boolean z4);

    default void destroy() {
    }

    void doSearch(String str, SearchCallback searchCallback);

    default void doSearch(String str, String[] strArr, SearchCallback searchCallback) {
        doSearch(str, searchCallback);
    }
}
