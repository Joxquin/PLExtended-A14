package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import z0.C1498f;
/* loaded from: classes.dex */
public final class I2 {

    /* renamed from: a  reason: collision with root package name */
    public final String f6589a;

    /* renamed from: b  reason: collision with root package name */
    public final C0693r2 f6590b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f6591c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f6592d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6593e;

    public I2(Context context, SearchTarget searchTarget, SearchTarget searchTarget2, SearchTarget searchTarget3) {
        int i4;
        char c4 = (C1498f.f(searchTarget) || TextUtils.isEmpty(searchTarget.getExtras().getString("group_id"))) ? (char) 0 : (char) 2;
        String a4 = C1498f.a(searchTarget);
        if ((c4 & 2) > 0) {
            String a5 = C1498f.a(searchTarget2);
            String a6 = C1498f.a(searchTarget3);
            this.f6592d = !TextUtils.equals(a5, a4);
            this.f6593e = !TextUtils.equals(a4, a6);
            i4 = 255;
        } else {
            this.f6592d = true;
            this.f6593e = true;
            i4 = 0;
        }
        this.f6589a = a4;
        Bundle extras = searchTarget.getExtras();
        this.f6591c = (extras != null && extras.getBoolean("decorate_together")) || "thumbnail".equals(searchTarget.getLayoutType());
        this.f6590b = new C0693r2(context, i4, this.f6592d, this.f6593e);
    }
}
