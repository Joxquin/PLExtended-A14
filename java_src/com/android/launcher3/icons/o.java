package com.android.launcher3.icons;

import android.content.ComponentName;
import com.android.launcher3.model.data.IconRequestInfo;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class o implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4676a;

    public /* synthetic */ o(int i4) {
        this.f4676a = i4;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f4676a) {
            case 0:
                IconRequestInfo iconRequestInfo = (IconRequestInfo) obj;
                return new L.c(iconRequestInfo.itemInfo.user, Boolean.valueOf(iconRequestInfo.useLowResIcon));
            case 1:
                return ((IconRequestInfo) obj).itemInfo.getTargetComponent();
            case 2:
                return ((IconRequestInfo) obj).itemInfo.getTargetComponent();
            default:
                return ((ComponentName) obj).flattenToString();
        }
    }
}
