package com.android.app.search;
/* loaded from: classes.dex */
public enum SearchTargetExtras$ResultSource {
    /* JADX INFO: Fake field, exist only in values array */
    EF7("aiai_search_root"),
    /* JADX INFO: Fake field, exist only in values array */
    EF17("appsearch_app_preview"),
    /* JADX INFO: Fake field, exist only in values array */
    EF27("appsearch_app_srp_preview"),
    /* JADX INFO: Fake field, exist only in values array */
    EF37("appsearch_category_srp_preview"),
    /* JADX INFO: Fake field, exist only in values array */
    EF47("appsearch_entity_srp_preview");
    
    private final String mDataSource;

    SearchTargetExtras$ResultSource(String str) {
        this.mDataSource = str;
    }

    public static boolean a(String str, SearchTargetExtras$ResultSource searchTargetExtras$ResultSource) {
        return searchTargetExtras$ResultSource.mDataSource.equals(str);
    }
}
