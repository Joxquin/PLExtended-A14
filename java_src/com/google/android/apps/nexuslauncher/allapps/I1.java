package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.icons.BitmapInfo;
/* loaded from: classes.dex */
public final /* synthetic */ class I1 implements InterfaceC0703u0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6586a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SearchResultIcon f6587b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0649g1 f6588c;

    public /* synthetic */ I1(int i4, C0649g1 c0649g1, SearchResultIcon searchResultIcon) {
        this.f6586a = i4;
        this.f6587b = searchResultIcon;
        this.f6588c = c0649g1;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.InterfaceC0703u0
    public final void a(BitmapInfo bitmapInfo) {
        int i4 = this.f6586a;
        C0649g1 c0649g1 = this.f6588c;
        SearchResultIcon searchResultIcon = this.f6587b;
        switch (i4) {
            case 0:
                E1 e12 = SearchResultIcon.f6722D;
                searchResultIcon.p(bitmapInfo, c0649g1);
                return;
            case 1:
                E1 e13 = SearchResultIcon.f6722D;
                searchResultIcon.p(bitmapInfo, c0649g1);
                return;
            default:
                E1 e14 = SearchResultIcon.f6722D;
                searchResultIcon.getClass();
                c0649g1.bitmap = bitmapInfo;
                searchResultIcon.applyFromItemInfoWithIcon(c0649g1);
                return;
        }
    }
}
