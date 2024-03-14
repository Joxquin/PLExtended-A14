package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final /* synthetic */ class r implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4860a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f4861b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f4862c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4863d;

    public /* synthetic */ r(ArrayList arrayList, int i4, int i5, int i6) {
        this.f4860a = i6;
        this.f4861b = arrayList;
        this.f4862c = i4;
        this.f4863d = i5;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        int i4 = this.f4860a;
        ArrayList arrayList = this.f4861b;
        int i5 = this.f4862c;
        int i6 = this.f4863d;
        switch (i4) {
            case 0:
                callbacks.bindItems(arrayList.subList(i5, i6 + i5));
                return;
            default:
                callbacks.bindItems(arrayList.subList(i5, i6 + i5));
                return;
        }
    }
}
