package com.android.quickstep.interaction;

import android.os.VibrationEffect;
import com.android.quickstep.interaction.AllSetActivity;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5668d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AllSetActivity.AnonymousClass1 f5669e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ VibrationEffect f5670f;

    public /* synthetic */ e(AllSetActivity.AnonymousClass1 anonymousClass1, VibrationEffect vibrationEffect, int i4) {
        this.f5668d = i4;
        this.f5669e = anonymousClass1;
        this.f5670f = vibrationEffect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5668d) {
            case 0:
                AllSetActivity.AnonymousClass1.a(this.f5669e, this.f5670f);
                return;
            default:
                AllSetActivity.AnonymousClass1.b(this.f5669e, this.f5670f);
                return;
        }
    }
}
