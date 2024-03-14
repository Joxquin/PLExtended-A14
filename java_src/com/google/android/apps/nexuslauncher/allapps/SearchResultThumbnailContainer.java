package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.android.app.search.SearchTargetExtras$ThumbnailCropType;
import java.util.ArrayList;
import z0.C1498f;
/* loaded from: classes.dex */
public class SearchResultThumbnailContainer extends C0720y1 {

    /* renamed from: e  reason: collision with root package name */
    public SearchResultThumbnailView[] f6816e;

    public SearchResultThumbnailContainer(Context context) {
        this(context, null, 0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0720y1, com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        SearchTargetExtras$ThumbnailCropType searchTargetExtras$ThumbnailCropType;
        super.e(c0653h1);
        SearchTarget searchTarget = c0653h1.f7080a;
        if (searchTarget == null || searchTarget.getExtras() == null) {
            return;
        }
        try {
            searchTargetExtras$ThumbnailCropType = C1498f.b(searchTarget);
        } catch (ArrayIndexOutOfBoundsException e4) {
            Log.w("SearchResultThumbnailContainer", "Unknown crop type", e4);
            searchTargetExtras$ThumbnailCropType = null;
        }
        if (searchTargetExtras$ThumbnailCropType != SearchTargetExtras$ThumbnailCropType.FILL_HEIGHT) {
            return;
        }
        int u4 = u(c0653h1);
        while (true) {
            SearchResultThumbnailView[] searchResultThumbnailViewArr = this.f6816e;
            if (u4 >= searchResultThumbnailViewArr.length) {
                return;
            }
            t(searchResultThumbnailViewArr[u4]);
            this.f6816e[u4].setVisibility(8);
            u4++;
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f6816e = new SearchResultThumbnailView[getChildCount()];
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            this.f6816e[i4] = (SearchResultThumbnailView) getChildAt(i4);
        }
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0720y1
    public final void r(C0653h1 c0653h1, SearchTarget searchTarget, View view) {
        int min = Math.min(this.f6816e.length, ((ArrayList) c0653h1.f7081b).size());
        SearchTargetExtras$ThumbnailCropType searchTargetExtras$ThumbnailCropType = SearchTargetExtras$ThumbnailCropType.DEFAULT;
        try {
            searchTargetExtras$ThumbnailCropType = C1498f.b(c0653h1.f7080a);
        } catch (ArrayIndexOutOfBoundsException e4) {
            Log.w("SearchResultThumbnailContainer", "Unknown crop type", e4);
        }
        androidx.constraintlayout.widget.d dVar = (androidx.constraintlayout.widget.d) view.getLayoutParams();
        int ordinal = searchTargetExtras$ThumbnailCropType.ordinal();
        if (ordinal == 2) {
            dVar.f2810R = 1.0f / min;
            ((SearchResultThumbnailView) view).s(C0653h1.a(searchTarget), min, false);
        } else if (ordinal != 3) {
            dVar.f2810R = 1.0f / this.f6816e.length;
            ((SearchResultThumbnailView) view).s(C0653h1.a(searchTarget), this.f6816e.length, false);
        } else {
            int u4 = u(c0653h1);
            dVar.f2810R = 1.0f / u4;
            ((SearchResultThumbnailView) view).s(C0653h1.a(searchTarget), u4, false);
        }
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0720y1
    public final void t(View view) {
        ((SearchResultThumbnailView) view).t();
    }

    public final int u(C0653h1 c0653h1) {
        Bundle extras;
        SearchTarget searchTarget = c0653h1.f7080a;
        return (searchTarget == null || (extras = searchTarget.getExtras()) == null) ? this.f6816e.length : Math.min(extras.getInt("thumbnail_max_count", this.f6816e.length), this.f6816e.length);
    }

    public SearchResultThumbnailContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultThumbnailContainer(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
