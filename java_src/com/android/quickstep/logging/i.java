package com.android.quickstep.logging;

import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$LauncherAttributes;
import com.android.launcher3.views.ActivityContext;
import com.google.protobuf.E;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5733a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ E f5734b;

    public /* synthetic */ i(E e4, int i4) {
        this.f5733a = i4;
        this.f5734b = e4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5733a) {
            case 0:
                ((ActivityContext) obj).applyOverwritesToLogItem((LauncherAtom$ItemInfo.Builder) this.f5734b);
                return;
            case 1:
                ((LauncherAtom$ItemInfo.Builder) this.f5734b).setContainerInfo((LauncherAtom$ContainerInfo) obj);
                return;
            case 2:
                ((LauncherAtom$ItemInfo.Builder) this.f5734b).setContainerInfo((LauncherAtom$ContainerInfo) obj);
                return;
            default:
                ((LauncherAtom$LauncherAttributes.Builder) this.f5734b).addItemAttributes(((Integer) obj).intValue());
                return;
        }
    }
}
