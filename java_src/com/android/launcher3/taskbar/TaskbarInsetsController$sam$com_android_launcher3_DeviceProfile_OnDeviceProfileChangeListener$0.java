package com.android.launcher3.taskbar;

import com.android.launcher3.DeviceProfile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0 implements DeviceProfile.OnDeviceProfileChangeListener {
    private final /* synthetic */ m3.l function;

    public TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0(m3.l function) {
        kotlin.jvm.internal.h.e(function, "function");
        this.function = function;
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final /* synthetic */ void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        this.function.invoke(deviceProfile);
    }
}
