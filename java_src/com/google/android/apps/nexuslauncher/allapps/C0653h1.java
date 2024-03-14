package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.text.TextUtils;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import java.util.ArrayList;
import java.util.List;
import z0.C1498f;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.h1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0653h1 extends BaseAllAppsAdapter.AdapterItem {

    /* renamed from: a  reason: collision with root package name */
    public final SearchTarget f7080a;

    /* renamed from: b  reason: collision with root package name */
    public final List f7081b;

    /* renamed from: c  reason: collision with root package name */
    public final int f7082c;

    /* renamed from: d  reason: collision with root package name */
    public I2 f7083d;

    public C0653h1(SearchTarget searchTarget, int i4, int i5) {
        super(i4);
        this.f7081b = new ArrayList();
        this.f7083d = null;
        this.f7080a = searchTarget;
        this.f7082c = i5;
    }

    public static C0653h1 a(SearchTarget searchTarget) {
        return new C0653h1(searchTarget, C0663k.f(searchTarget), D2.f(searchTarget.getExtras()));
    }

    @Override // com.android.launcher3.allapps.BaseAllAppsAdapter.AdapterItem
    public final boolean isContentSame(BaseAllAppsAdapter.AdapterItem adapterItem) {
        return TextUtils.equals(this.f7080a.getId(), ((C0653h1) adapterItem).f7080a.getId());
    }

    @Override // com.android.launcher3.allapps.BaseAllAppsAdapter.AdapterItem
    public final boolean isCountedForAccessibility() {
        int i4 = this.viewType;
        return (i4 & 16258) == i4;
    }

    @Override // com.android.launcher3.allapps.BaseAllAppsAdapter.AdapterItem
    public final boolean isSameAs(BaseAllAppsAdapter.AdapterItem adapterItem) {
        return adapterItem.viewType != this.viewType && (adapterItem instanceof C0653h1) && TextUtils.equals(C1498f.a(this.f7080a), C1498f.a(((C0653h1) adapterItem).f7080a));
    }

    @Override // com.android.launcher3.allapps.BaseAllAppsAdapter.AdapterItem
    public final void setDecorationFillAlpha(int i4) {
        C0693r2 c0693r2;
        I2 i22 = this.f7083d;
        if (i22 == null || (c0693r2 = i22.f6590b) == null || c0693r2.f7168h == 0) {
            return;
        }
        c0693r2.f7171k = i4;
        c0693r2.f7169i.setAlpha(i4);
    }
}
