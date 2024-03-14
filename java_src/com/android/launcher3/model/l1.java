package com.android.launcher3.model;

import android.content.Intent;
import android.net.Uri;
import java.util.Map;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class l1 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4837a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4838b;

    public /* synthetic */ l1(int i4, Object obj) {
        this.f4837a = i4;
        this.f4838b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4837a) {
            case 0:
                Uri uri = (Uri) obj;
                WellbeingModel.c((WellbeingModel) this.f4838b);
                return;
            case 1:
                Intent intent = (Intent) obj;
                WellbeingModel.f((WellbeingModel) this.f4838b);
                return;
            case 2:
                WellbeingModel.a((WellbeingModel) this.f4838b, (Intent) obj);
                return;
            default:
                ((Map) this.f4838b).remove((String) obj);
                return;
        }
    }
}
