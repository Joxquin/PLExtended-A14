package com.android.quickstep.util;

import android.app.prediction.AppTarget;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.function.Supplier;
/* renamed from: com.android.quickstep.util.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0572s implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5891d = 1;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Supplier f5892e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Context f5893f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ String f5894g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Parcelable f5895h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Parcelable f5896i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ Object f5897j;

    public /* synthetic */ RunnableC0572s(Supplier supplier, RectF rectF, Context context, String str, AppTarget appTarget, ShortcutInfo shortcutInfo) {
        this.f5892e = supplier;
        this.f5895h = rectF;
        this.f5893f = context;
        this.f5894g = str;
        this.f5896i = appTarget;
        this.f5897j = shortcutInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5891d) {
            case 0:
                ImageActionUtils.lambda$startShareActivity$2(this.f5892e, this.f5894g, this.f5893f, (Rect) this.f5895h, (Intent) this.f5896i, (View) this.f5897j);
                return;
            default:
                ImageActionUtils.lambda$shareImage$0(this.f5892e, (RectF) this.f5895h, this.f5893f, this.f5894g, this.f5896i, (ShortcutInfo) this.f5897j);
                return;
        }
    }

    public /* synthetic */ RunnableC0572s(Supplier supplier, String str, Context context, Rect rect, Intent intent, View view) {
        this.f5892e = supplier;
        this.f5894g = str;
        this.f5893f = context;
        this.f5895h = rect;
        this.f5896i = intent;
        this.f5897j = view;
    }
}
