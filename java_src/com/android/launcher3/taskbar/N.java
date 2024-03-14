package com.android.launcher3.taskbar;

import com.android.launcher3.DeviceProfile;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class N implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TaskbarActivityContext f5049a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DeviceProfile f5050b;

    public /* synthetic */ N(TaskbarActivityContext taskbarActivityContext, DeviceProfile deviceProfile) {
        this.f5049a = taskbarActivityContext;
        this.f5050b = deviceProfile;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        TaskbarActivityContext taskbarActivityContext = this.f5049a;
        DeviceProfile deviceProfile = this.f5050b;
        DeviceProfile deviceProfile2 = (DeviceProfile) obj;
        taskbarActivityContext.getClass();
        deviceProfile2.numShownHotseatIcons = deviceProfile.numShownHotseatIcons;
        deviceProfile2.hotseatQsbWidth = deviceProfile.hotseatQsbWidth;
        deviceProfile2.iconSizePx = deviceProfile2.taskbarIconSize;
        deviceProfile2.updateIconSize(1.0f, taskbarActivityContext.getResources());
    }
}
