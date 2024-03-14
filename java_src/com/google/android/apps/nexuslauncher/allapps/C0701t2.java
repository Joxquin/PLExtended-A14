package com.google.android.apps.nexuslauncher.allapps;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import androidx.recyclerview.widget.AbstractC0274i0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.allapps.SearchUiManager;
import com.android.launcher3.allapps.search.SearchAdapterProvider;
import com.google.android.apps.nexuslauncher.search.SearchEditText;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.t2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0701t2 extends AbstractC0274i0 {

    /* renamed from: d  reason: collision with root package name */
    public final ActivityAllAppsContainerView f7226d;

    public C0701t2(ActivityAllAppsContainerView activityAllAppsContainerView) {
        this.f7226d = activityAllAppsContainerView;
    }

    @Override // androidx.recyclerview.widget.AbstractC0274i0
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, androidx.recyclerview.widget.A0 a02) {
        I2 i22;
        C0693r2 c0693r2;
        RecyclerView recyclerView2 = recyclerView;
        ActivityAllAppsContainerView activityAllAppsContainerView = this.f7226d;
        List adapterItems = activityAllAppsContainerView.getSearchResultList().getAdapterItems();
        SearchAdapterProvider mainAdapterProvider = activityAllAppsContainerView.getMainAdapterProvider();
        HashMap hashMap = new HashMap();
        int i4 = 0;
        while (i4 < recyclerView.getChildCount()) {
            View childAt = recyclerView2.getChildAt(i4);
            int childAdapterPosition = recyclerView2.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= 0) {
                ArrayList arrayList = (ArrayList) adapterItems;
                if (childAdapterPosition < arrayList.size()) {
                    BaseAllAppsAdapter.AdapterItem adapterItem = (BaseAllAppsAdapter.AdapterItem) arrayList.get(childAdapterPosition);
                    if ((adapterItem instanceof C0653h1) && (i22 = ((C0653h1) adapterItem).f7083d) != null && (c0693r2 = i22.f6590b) != null) {
                        SearchUiManager searchUiManager = activityAllAppsContainerView.getSearchUiManager();
                        if (childAt.equals(mainAdapterProvider.getHighlightedItem()) && searchUiManager.getEditText().hasFocus()) {
                            c0693r2.c(canvas, childAt, !((SearchEditText) searchUiManager.getEditText()).j());
                        } else if (i22.f6591c) {
                            String str = i22.f6589a;
                            C0697s2 c0697s2 = (C0697s2) hashMap.getOrDefault(str == null ? "" : str, new C0697s2(c0693r2, recyclerView.getPaddingLeft(), recyclerView.getPaddingRight()));
                            c0697s2.getClass();
                            c0697s2.f7164d.union(childAt.getLeft(), childAt.getY(), childAt.getRight(), childAt.getY() + ((int) (childAt.getScaleY() * childAt.getHeight())));
                            c0697s2.f7172l |= c0693r2.f7172l;
                            c0697s2.f7173m |= c0693r2.f7173m;
                            hashMap.put(str != null ? str : "", c0697s2);
                        } else {
                            c0693r2.c(canvas, childAt, false);
                            i4++;
                            recyclerView2 = recyclerView;
                        }
                    }
                }
            }
            i4++;
            recyclerView2 = recyclerView;
        }
        for (C0697s2 c0697s22 : hashMap.values()) {
            c0697s22.a();
            RectF rectF = c0697s22.f7164d;
            rectF.left = c0697s22.f7200p;
            rectF.right = canvas.getWidth() - c0697s22.f7201q;
            Paint paint = c0697s22.f7169i;
            paint.setColor(c0697s22.f7166f);
            paint.setAlpha(c0697s22.f7171k);
            c0697s22.b(canvas);
        }
    }
}
