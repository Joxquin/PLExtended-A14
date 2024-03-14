package com.google.android.apps.nexuslauncher.allapps;

import android.view.View;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.d2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class View$OnLongClickListenerC0638d2 implements View.OnLongClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7028d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SearchResultThumbnailView f7029e;

    public /* synthetic */ View$OnLongClickListenerC0638d2(SearchResultThumbnailView searchResultThumbnailView, int i4) {
        this.f7028d = i4;
        this.f7029e = searchResultThumbnailView;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f7028d) {
            case 0:
                SearchResultThumbnailView.r(this.f7029e, view);
                return true;
            case 1:
                this.f7029e.f6819e.startShareActivity(null);
                return true;
            default:
                SearchResultThumbnailView.r(this.f7029e, view);
                return true;
        }
    }
}
