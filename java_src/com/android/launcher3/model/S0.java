package com.android.launcher3.model;

import com.android.launcher3.model.BgDataModel;
/* loaded from: classes.dex */
public final /* synthetic */ class S0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4764d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ BgDataModel.Callbacks[] f4765e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f4766f;

    public /* synthetic */ S0(BgDataModel.Callbacks[] callbacksArr, Object obj, int i4) {
        this.f4764d = i4;
        this.f4765e = callbacksArr;
        this.f4766f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i4 = 0;
        switch (this.f4764d) {
            case 0:
                BgDataModel.Callbacks[] callbacksArr = this.f4765e;
                Iterable<BgDataModel.FixedContainerItems> iterable = (Iterable) this.f4766f;
                int length = callbacksArr.length;
                while (i4 < length) {
                    BgDataModel.Callbacks callbacks = callbacksArr[i4];
                    for (BgDataModel.FixedContainerItems fixedContainerItems : iterable) {
                        callbacks.bindExtraContainerItems(fixedContainerItems);
                    }
                    i4++;
                }
                return;
            default:
                BgDataModel.Callbacks[] callbacksArr2 = this.f4765e;
                BgDataModel.FixedContainerItems fixedContainerItems2 = (BgDataModel.FixedContainerItems) this.f4766f;
                int length2 = callbacksArr2.length;
                while (i4 < length2) {
                    callbacksArr2[i4].bindExtraContainerItems(fixedContainerItems2);
                    i4++;
                }
                return;
        }
    }
}
